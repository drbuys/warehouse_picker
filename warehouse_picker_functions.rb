
require('pry-byebug')
# INVENTORY = {
#   a: ['needle', 'stop sign', 'blouse', 'hanger', 'rubber duck', 'shovel', 'bookmark', 'model car', 'glow stick', 'rubber band'],
#   b: ['tyre swing', 'sharpie', 'picture frame', 'photo album', 'nail filer', 'tooth paste', 'bath fizzers', 'tissue box', 'deodorant', 'cookie jar'],
#   c: ['rusty nail', 'drill press', 'chalk', 'word search', 'thermometer', 'face wash', 'paint brush', 'candy wrapper', 'shoe lace', 'leg warmers']
# }

# def item_at_bay(bay)
#   array = bay.split(//, 2)
#   return INVENTORY[array[0].to_sym][(array[1].to_i) -1]
# end
#
# def bay_for_item(item)
#
#   for x in INVENTORY.keys
#     if INVENTORY[x].index(item)
#     # for a in x
#     # #   if a == item
#     #     return "#{INVENTORY.index[x]}#{a.index - 1}"
#     #   end
#       # return "#{INVENTORY[x].index} #{INVENTORY[x][item].index + 1}"
#       puts INVENTORY
#     end
#   end
#   return false
# end

INVENTORY = [
  {a10: 'rubber band'}, {a9: 'glow stick'}, {a8: 'model car'}, {a7: 'bookmark'}, {a6: 'shovel'}, {a5: 'rubber duck'}, {a4: 'hanger'}, {a3: 'blouse'}, {a2: 'stop sign'}, {a1: 'needle'},
  {c1: 'rusty nail'}, {c2: 'drill press'}, {c3: 'chalk'}, {c4: 'word search'}, {c5: 'thermometer'}, {c6: 'face wash'}, {c7: 'paint brush'}, {c8: 'candy wrapper'}, {c9: 'shoe lace'}, {c10: 'leg warmers'},
  {b1: 'tyre swing'}, {b2: 'sharpie'}, {b3: 'picture frame'}, {b4: 'photo album'}, {b5: 'nail filer'}, {b6: 'tooth paste'}, {b7: 'bath fizzers'}, {b8: 'tissue box'},
  {b9: 'deodorant'}, {b10: 'cookie jar'}
]


def item_at_bay(bay)
  for x in INVENTORY
    if x.has_key?(bay.to_sym)
      return value = x[bay.to_sym]
    end
  end
  return value
end

def index_for_bay(bay)
  for x in INVENTORY
    if x.has_key?(bay.to_sym)
      return index = INVENTORY.index(x)
    end
  end
  return index
end

puts index_for_bay('a10')

def bay_for_item(item)
  for x in INVENTORY
    if x.has_value?(item)
      return key = x.key(item).to_s
    end
  end
  return key
end

def index_for_item(item)
  for x in INVENTORY
    if x.has_value?(item)
      return index = INVENTORY.index(x)
    end
  end
  return index
end

puts index_for_item('nail filer')

def list_of_bays(string_of_bays)
  bays = string_of_bays.split(", ")
  numbers = []
  items = ""
  for x in bays
    items += item_at_bay(x) + ", "
  #   numbers << x.split(//, 2)[1].to_i
  # end
  end

  # item_list = "#{items}, and they are #{distance} apart!"
  # distance = numbers.max - numbers.min
  # item_list = "#{items[0...-2]} are #{distance} bays apart"
  # return item_list
  return items[0...-2]
end


def list_of_items(string_of_items)
  items = string_of_items.split(", ")
  bays = ""
  for x in items
    bays += bay_for_item(x) + ", "
  end
  return bays[0...-2]
end

def distance_given_bays(string_of_bays)
  # list = list_of_bays(string_of_bays).split(", ")
  # arr = []

  # for x in INVENTORY
  #   #binding.pry
  #   if x.has_value?(list)
  #     arr << x.index(list)
  #   end
  # end
  # value = arr.max - arr.min
  # return value
end


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

def bay_for_item(item)
  for x in INVENTORY
    if x.has_value?(item)
      return key = x.key(item).to_s
    end
  end
  return key
end

def list_of_bays(string_of_bays)
  bays = string_of_bays.split(", ")
  items = ""
  for x in bays
    items += item_at_bay(x) + ", "
  end
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

def index_for_bay(bay)
  for x in INVENTORY
    if x.has_key?(bay.to_sym)
      return index = INVENTORY.index(x)
    end
  end
  return index
end

def index_for_item(item)
  for x in INVENTORY
    if x.has_value?(item)
      return index = INVENTORY.index(x)
    end
  end
  return index
end

def distance_given_bays(string_of_bays)
  bays = string_of_bays.split(", ")
  numbers = []
  for x in bays
    numbers << index_for_bay(x)
  end
  distance = numbers.max - numbers.min
  item_list = "#{list_of_bays(string_of_bays)} are #{distance} bays apart"
  return item_list
end

def distance_given_items(string_of_items)
  bays = list_of_items(string_of_items).split(", ") #return an array
  numbers = []
  bays_string = ""
  for x in bays
    numbers << index_for_bay(x)
  end
  numbers = numbers.sort
  for x in numbers
    bays_string += INVENTORY[x].keys[0].to_s + ", "
  end
  return bays_string[0...-2]
end

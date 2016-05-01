
require('pry-byebug')

INVENTORY = [
  {a10: 'rubber band'}, {a9: 'glow stick'}, {a8: 'model car'}, {a7: 'bookmark'}, {a6: 'shovel'}, {a5: 'rubber duck'}, {a4: 'hanger'}, {a3: 'blouse'}, {a2: 'stop sign'}, {a1: 'needle'},
  {c1: 'rusty nail'}, {c2: 'drill press'}, {c3: 'chalk'}, {c4: 'word search'}, {c5: 'thermometer'}, {c6: 'face wash'}, {c7: 'paint brush'}, {c8: 'candy wrapper'}, {c9: 'shoe lace'}, {c10: 'leg warmers'},
  {b1: 'tyre swing'}, {b2: 'sharpie'}, {b3: 'picture frame'}, {b4: 'photo album'}, {b5: 'nail filer'}, {b6: 'tooth paste'}, {b7: 'bath fizzers'}, {b8: 'tissue box'},
  {b9: 'deodorant'}, {b10: 'cookie jar'}
]

#1) Given a bay, returns the item in that bay
# => given "b5", should return 'nail filer'
def item_at_bay(bay)
  for x in INVENTORY
    if x.has_key?(bay.to_sym)
      return value = x[bay.to_sym]
    end
  end
  return value
end

#2) Given an item return the bay that it is in.
# => given "nail filer" should return "b5"
def bay_for_item(item)
  for x in INVENTORY
    if x.has_value?(item)
      return key = x.key(item).to_s
    end
  end
  return key
end

#3) Given a list of bays, list the items in those bays
# => given "b5, b10, and b6", determine that the products are "nail filer, cookie jar, and tooth paste"
def list_of_bays(string_of_bays)
  bays = string_of_bays.split(", ")
  items = ""
  for x in bays
    items += item_at_bay(x) + ", "
  end
  return items[0...-2]
end

#4) Given a list of items find the bays.
# => given "shoe lace, rusty nail, leg warmers", determine that those items need to be collected from "c1, c9, and c10"
def list_of_items(string_of_items)
  items = string_of_items.split(", ")
  bays = ""
  for x in items
    bays += bay_for_item(x) + ", "
  end
  return bays[0...-2]
end

#Helper function for Q5+6
def index_for_bay(bay)
  for x in INVENTORY
    if x.has_key?(bay.to_sym)
      return index = INVENTORY.index(x)
    end
  end
  return index
end

#Helper function for Q5+6
def index_for_item(item)
  for x in INVENTORY
    if x.has_value?(item)
      return index = INVENTORY.index(x)
    end
  end
  return index
end

#5) Given a list of bays, list the items in those bays, and calculate the distance from the two furthest apart bays. For instance:
# => given "b5, b10, and b6", determine that the products are "nail filer, cookie jar, and tooth paste", and they're five bays apart
# => given "b3, c7, c9 and a3", determine that the products are "picture frame, paint brush, shoe lace, and blouse", and they're 15 bays apart.)
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

#6) Given a list of products, find the bays that need to be visited, and order them in the order they need to be visited from entrance to exit. For instance:
# => given "shoe lace, rusty nail, leg warmers", determine that those items need to be collected from "c1, c9, and c10"
# => given "hanger, deodorant, candy wrapper, rubber band", determine that those items need to be collected from "a10, a4, c8, and b9"
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

# GPS 2.2
# Saham Khozestani and Paul Newsam guided by Aji Slater

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # SPLIT the string into an array
  # For each item in the array, create a key/value pair in the hash with string as key and default quantity of 0 as value
  # PRINT the hash to the console [can you use one of your other methods here?]
# output: hash (because we want to correspond a quantity with each item)

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: 
  # IF no quantity provided, quantity is 0
  # PUSH item to list with quantity
# output: updated list

# Method to remove an item from the list
# input: list, item name (to be removed)
# steps: 
  # FOR each item, remove from list
# output: updated list

# Method to update the quantity of an item
# input: list, item name, updated quantity
# steps:
  # WHILE not end of list, update items with quantity
# output: updated list

# Method to print a list and make it look pretty
# input: updated list
# steps: 
  # EACH key/value pair
    # Print item name and quantity in a pretty way
# output: prettyfied list


def create_list(string)
  grocery_list = {}
  array = string.split
  array.each do | item |
    grocery_list["#{item}"] = 0
  end
  grocery_list
end
#---------------------------------
def add_item(list,item,quantity=0)

  list["#{item}"] = quantity
  list
end
#--------------------------------------
#remove item from list
def delete_item(list,item)
  list.delete(item)
  list
end
#-------------------------------
def update_qty(list,item,quantity)
  list["#{item}"] = quantity
  list
end

def print_list(list)
  puts "Grocery list"
  puts ""

  list.each { |item, qty| puts "#{item}      #{qty}"}
end
     
grocery_list = create_list('carrots cereal icecream')
puts grocery_list
puts add_item(grocery_list,"pizza", 3)
puts delete_item(grocery_list,"cereal")
puts update_qty(grocery_list,"carrots",2)
puts ''
print_list(grocery_list)

#------------------------------------------


# Reflect

# Pseudocode: It's often better to have your pseudocode be more descriptive than less! We probably could've done a better job outlining some of these methods.

# We decided a hash was the best fit for this challenge because we wanted a combinations of string and integer data that were linked. The key/value structure seemed to make the most sense!

# A method will by default return the last evaluated expression.

# You can pass all kinds of things into methods as arguments - arrays, hashes, basic data types... You just need to design your method to manipulate the appropriate data type.

# Well one way to pass information between methods is to use one method as the input for another. The return value will supply the input. In this case we defined a global variable that stored the output of our create_list method, which is another option. We could probably also have used the global $ signifier.







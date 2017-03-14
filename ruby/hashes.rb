# Pseudocode
# Define hash
# Define function "gets_user_inputs"



def generate_hash ()
  $client_details = {
    name: "",
    age: "",
    has_children: "",
    decor_theme: "" 
  }
  puts "What's your name?"
  $client_details[:name] = gets.chomp
  puts "What's your age?"
  $client_details[:age] = gets.chomp.to_i
  puts "Do you have children? y/n"
  has_children_response = gets.chomp
    if has_children_response == 'y'
      $client_details[:has_children] = true
    else
      $client_details[:has_children] = false
    end
  puts "Which decor theme would you like? Our options are: Rustic Western, Island Paradise, and Victorian."
  $client_details[:decor_theme] = gets.chomp
  "Great! Let\'s see here..."
end

def print_hash ()
  puts 'Let me see if I got this right.'
  puts "Your name is #{$client_details[:name]}. \nYou are #{$client_details[:age]} years old."
  if $client_details[:has_children] == true
    puts "You have children."
  else
    puts "You have no children."
  end
  puts "And your preferred decor theme is #{$client_details[:decor_theme]}."
end

def correct_details ()

end

def collect_client_details ()
  generate_hash
  print_hash

end

collect_client_details
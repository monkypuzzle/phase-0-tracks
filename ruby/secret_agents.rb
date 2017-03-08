# Encrypt method:
# - For each character in the string
#   - If it's a letter, advance letter by one
#   - Else if it's a space, ignore it
# - Return the encrypted string

# Decrypt method: 
# - Define a variable that contains the entire alphabet
#   - For each character in the string
#     - Check its index within alphabet variable
#     - Decrease index by 1 and redefine character in string as that decreased index
# - Return decrypted string

# Adding an interface: 
# - Ask for encrypt or decrypt
# - Ask for password
# - If they asked for encrypt, call encrypt function on password
# - Else if they asked for decrypt, call decrypt function on password
# - Print the result to the screen

def encrypt (password)
  output = ''
  for i in 0.. ( password.length - 1) do
    if password[i] == ' '
      output += ' '
    elsif password[i] == 'z'
      output += 'a'
    else
      output += password[i].to_s.next
    end
  end
  output
end

# puts encrypt('blank day')

def decrypt (password)
  output = ''
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  for i in 0.. ( password.length - 1 ) do
    if password[i] == ' '
      output += ' '
    elsif password[i] == 'a'
      output += 'z'
    else
      j = alphabet.index(password[i].to_s).to_i
      output += alphabet[j - 1]
    end
  end
  output
end

# puts decrypt('cmbol ebz')
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt('afe')
# puts decrypt(encrypt('swordfish'))

# The encrypt function will run and then return a string that the decrypt function will be called with.

response = nil

loop do
  puts 'Would you like an encryption or decryption?'
  input = gets.chomp
  if input == 'encryption' || input == 'decryption'
    response = input
    break
  end
end

puts 'What is your password?'

password = gets.chomp

result = nil

if response == 'encryption'
  result = encrypt(password)
else
  result = decrypt(password)
end

puts 'Your result is ' + result








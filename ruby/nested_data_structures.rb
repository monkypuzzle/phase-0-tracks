drinks_menu = {
  "Wine" => {
    "Red" => ['Beaujolais', 'Zinfandel', 'Tempranillo'],
    "White" => ['Chablis', 'Gewurztraminer', 'Riesling']
    },
  "Beer" => [['West Coast IPA', 'American IPA'], 'Belgian White', 'Pilsner', 'Stout'],
  "Soda" => ['Coca-Cola', 'Seven-Up', 'Dr. Pepper'],
  "Water" => ['Still', 'Sparkling']
}

puts drinks_menu['Wine']['Red'][0]
# Should print 'Beaujolais'

puts drinks_menu['Beer'][0][0]
# Should print 'West Coast IPA'

puts drinks_menu['Water'][0]
# Should print 'Still'

print drinks_menu['Wine']['White']
# Should print ['Chablis', 'Gewurztraminer', 'Riesling']
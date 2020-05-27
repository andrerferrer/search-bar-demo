puts "Cleaning the DB"
City.destroy_all

# We don't need to do this -> Restaurant.destroy_all
# Why???

puts "Create some nice"
puts %(

  88                                                              88               
8b,dPPYba,  ,adPPYba, ,adPPYba, MM88MMM ,adPPYYba, 88       88 8b,dPPYba, ,adPPYYba, 8b,dPPYba, MM88MMM ,adPPYba,  
88P'   "Y8 a8P_____88 I8[    ""   88    ""     `Y8 88       88 88P'   "Y8 ""     `Y8 88P'   `"8a  88    I8[    ""  
88         8PP"""""""  `"Y8ba,    88    ,adPPPPP88 88       88 88         ,adPPPPP88 88       88  88     `"Y8ba,   
88         "8b,   ,aa aa    ]8I   88,   88,    ,88 "8a,   ,a88 88         88,    ,88 88       88  88,   aa    ]8I  
88          `"Ybbd8"' `"YbbdP"'   "Y888 `"8bbdP"Y8  `"YbbdP'Y8 88         `"8bbdP"Y8 88       88  "Y888 `"YbbdP"'  

)

City.create! name: "Rio de Janeiro"
City.create name: "Niteroi"

Restaurant.create! name: "Mac Donaldo Rio", rating: rand(1..5), category: "Junk", city: City.first
Restaurant.create! name: "Mac Donaldo Niteroi", rating: rand(1..5), category: "Junk", city: City.second
Restaurant.create! name: "Burger Kingo Rio", rating: rand(1..5), category: "Junk", city: City.first
Restaurant.create! name: "Burger Kingo Niteroi", rating: rand(1..5), category: "Junk", city: City.second
Restaurant.create! name: "Amareleen", rating: rand(5..5), category: "Brazilian", city: City.first

puts "We're done!"

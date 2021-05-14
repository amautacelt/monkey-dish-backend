# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "🗑Deleting managers..."

Manager.destroy_all

puts "Creating managers..."


puts "🗑Deleting menus..."

Menu.destroy_all

puts "Creating menus..."


puts "🗑Deleting dishes..."

Dish.destroy_all

puts "Creating dishes..."

managers = [
    {
    first_name: "Ahmad",
    last_name: "Bolton",
    title: "General Manager",
    },

    {
    first_name: "Tara",
    last_name: "Silva",
    title: "Assistant Manager",
    },

    {
    first_name: "Jaron",
    last_name: "Pollard",
    title: "Kitchen Manager",
    },

    {
    first_name: "Guadalupe",
    last_name: "Marsh",
    title: "Food & Beverage Manager",
    },

    {
    first_name: "Chad",
    last_name: "Fisher",
    title: "Food & Beverage Manager",
    },

    {
    first_name: "Emanuel",
    last_name: "Chen",
    title: "Kitchen Manager",
    },

    {
    first_name: "Janiah",
    last_name: "Henry",
    title: "Assistant Manager",
    },

    {
    first_name: "Ariel",
    last_name: "Andrews",
    title: "Assistant Manager",
    },

    {
    first_name: "Claudia",
    last_name: "Yu",
    title: "General Manager",
    },

    {
    first_name: "Malaki",
    last_name: "Gates",
    title: "Kitchen Manager",
    },

]

managers.each do |manager_hash|
    Manager.create!(manager_hash)
end


menus = [
    {
    restaurant_name: "Party Fowl",
    restaurant_description: "This Nashville restaurant specializes in local delicacy hot chicken, and they have varying degrees of heat levels ranging from mild to “Poultrygeist.",
    manager_id: Manager.all.sample.id,
    },

    {
    restaurant_name: "Like No Udder",
    restaurant_description: "This vegan ice cream company started out as an ice cream truck back in 2010 and was recognized as being the world’s first all-vegan soft serve ice cream truck. After cultivating a loyal following, owners opened a permanent brick and mortar location in early 2016.",
    manager_id: Manager.all.sample.id,
    },

    {
    restaurant_name: "Basic Kneads Pizza",
    restaurant_description: "We all have our basic needs, and pizza is definitely one of them. Basic Kneads Pizza is 100% mobile and consists of four mobile wood fired ovens traveling at events throughout metro Denver.",
    manager_id: Manager.all.sample.id,
    },

    {
    restaurant_name: "A Salt & Battery",
    restaurant_description: "This New York City establishment specializes in traditional British fish and chips. The try as much as possible to source their ingredients locally, but their cooking techniques and their traditional British fryers were brought over from the UK. This is also the perfect place to pick up a Cod Save The Queen t-shirt.",
    manager_id: Manager.all.sample.id,
    },

    {
    restaurant_name: "Lox Stock & Bagels",
    restaurant_description: "This bagel café began in 1990 by a couple with young children, and now their entire family runs three different locations. Clearly, they take their bagels seriously.",
    manager_id: Manager.all.sample.id,
    },

    {
    restaurant_name: "Thai Me Up Restaurant & Brewery",
    restaurant_description: "This Wyoming restaurant is nearby local ski resorts and founded by a ski bum. Their menu is American influenced modern Thai cuisine, as well as classic Thai dishes. They also brew beer and have 20 craft beers on tap.",
    manager_id: Manager.all.sample.id,
    },

    {
    restaurant_name: "Brew'd Awakening Coffeehaus",
    restaurant_description: "Brew’d Awakening opened in the former mill town of Lowell, Massachusetts in 2005. Ten years later, inspired by the thriving cultural and art scene in the city, they started to roast their own coffee, and now have three different roasts available at a time.",
    manager_id: Manager.all.sample.id,
    },

    {
    restaurant_name: "Wild Thyme Cafe",
    restaurant_description: "At this Tennessee café, they serve up healthy options, many of which are organic or sourced locally. They are sure to offer gluten-free and vegan options, and clearly, love a good food pun.",
    manager_id: Manager.all.sample.id,
    },

    {
    restaurant_name: "Tequila Mockingbird",
    restaurant_description: "This Mexican bar and grill serves authentic Mexican cuisine and its name perfectly combines their favorite spirit with their favorite book.",
    manager_id: Manager.all.sample.id,
    },

    {
    restaurant_name: "The Notorious P.I.G",
    restaurant_description: "Not only is this barbecue joint notorious for their pun on the iconic rapper’s name, but they’re also notorious for their delicious BBQ meals. It’s founder, Burke Holmes, brought the best recipes from his hometown of Saint Louis, Missouri to Missoula, Montana.",
    manager_id: Manager.all.sample.id,
    },

]

menus.each do |menu_hash|
    Menu.create!(menu_hash)
end



dishes = [
    {
    name: "Bibimbap",
    description: "One of the most popular Korean dishes besides bulgogi and kimchi, bibimbap is said to have been invented out of necessity, just like many other national dishes. In Korea, there is a tradition that any leftover food from New Year's Eve should not be brought over into the New Year, so it started the practice of combining different ingredients with rice in a bowl, and bibimbap was created.",
    category: "Dinner",
    image: "https://cdn.tasteatlas.com/images/dishes/4dd65e828a014639994d77ab09f5dba5.jpg?w=905&h=510",
    menu_id: Menu.all.sample.id,
    },

    {
    name: "Tonkatsu",
    description: "Tonkatsu is a dish in itself or, if married with other ingredients, it can turn into many of its almost endless variations; made like a sandwich, paired with ramen or rice, poured over with a thick miso sauce as done in Nagoya, or served with curry to make katsu karē.",
    category: "Lunch",
    image: "https://cdn.tasteatlas.com/images/dishes/bad3bf5847bc4dee9ad59f1d9ca84725.jpg?w=905&h=510",
    menu_id: Menu.all.sample.id,
    },

    {
    name: "Tamal",
    description: "Even though it is common for Mexican food to be served with a variety of sauces and salsas, tamales are the exception because they are usually eaten plain and simple without any sauces, although it is not a rule set in stone. One of the first records of tamales dates back to the 1550s when the Spaniards were served the dish by the Aztecs who made them with beans, meat, and chiles.",
    category: "Breakfast",
    image: "https://cdn.tasteatlas.com/Images/Dishes/afffce27019140a1a911db7b6ad96022.jpg?w=905&h=510",
    menu_id: Menu.all.sample.id,
    },

    {
    name: "Ceviche",
    description: "The acidic marinade, also known as leche de tigre (lit. tiger's milk) 'cooks' the meat without any heat involved in the process. For ceviche, fresh fish is an imperative, as fish and shellfish that are not fresh can cause food poisoning. Peruvians are used to fresh ingredients, so the fish will sometimes be prepared for ceviche less than an hour after being caught. ",
    category: "Lunch",
    image: "https://cdn.tasteatlas.com/Images/Dishes/385f61bf908247b5ac663e6dc3beb95b.jpg?w=905&h=510",
    menu_id: Menu.all.sample.id,
    },

    {
    name: "Pho",
    description: "Pho is a Vietnamese noodle soup, Vietnam's national dish, street food, comfort food, and a way of life. It is also one of the most beloved Vietnamese dishes in the western hemisphere due to its complex, unique flavors, and elegant simplicity. Although it is classified as a soup, pho is served as the main course and the two bowls of it never taste the same.",
    category: "Lunch",
    image: "https://cdn.tasteatlas.com/images/dishes/fa12a95fe7ce41e89951e5d153269402.jpg?w=905&h=510",
    menu_id: Menu.all.sample.id,
    },

    {
    name: "Mac and Cheese",
    description: "Although it is an American staple, the dish was probably inspired by various pasta and cheese dishes that were enjoyed in Italy, France, and the United Kingdom, before its appearance in the United States. It was Thomas Jefferson who eventually popularized it, when he had the pasta machine shipped back home to Virginia and served the dish at his lavish banquets, while in 1824, his distant cousin Mary Randolph published the first mac and cheese recipe.",
    category: "Lunch",
    image: "https://cdn.tasteatlas.com/Images/Dishes/43b9fc3a33314d2cb2d25bd73bb5a046.jpg?w=905&h=510",
    menu_id: Menu.all.sample.id,
    },

    {
    name: "Gnocchi",
    description: "They are typically boiled in large amounts of salted water or fried in shallow oil, a technique typical for some Italian regions. Gnocchi are believed to have been one of the first types of pasta, and historical records show that the term gnocchi, or gnocco, was sometimes interchangeably used with the word maccherone, a word that once referred to all pasta in general.",
    category: "Dinner",
    image: "https://cdn.tasteatlas.com/Images/Ingredients/8eebb4d119b545bc8d7c6b676b56953b.jpg?w=905&h=510",
    menu_id: Menu.all.sample.id,
    },

    {
    name: "Sarma",
    description: "Having its roots in the Ottoman Empire, sarma is also traditionally consumed in the Balkans, the countries of Central Europe, the South Caucasus, and the Middle East. Although it is commonly enjoyed as a filling lunch or dinner (typically during the winter season), sarma is often prepared on special occasions and holidays.",
    category: "Dinner",
    image: "https://cdn.tasteatlas.com/images/dishes/abbef07b6054405a8b2305db7beca93e.jpg?w=905&h=510",
    menu_id: Menu.all.sample.id,
    },

    {
    name: "Pizza Margherita",
    description: "It was made by a chef named Raffaele Esposito of Pizzeria Brandi, who is credited for its invention. The Queen loved the dish, and Esposito named it after her - pizza Margherita, but such a pizza was also made before that time, and can be dated back to at least 1866, when the most popular pizza toppings included basil, cheese, and tomatoes, but the pizza was not yet named Margherita.",
    category: "Dinner",
    image: "https://cdn.tasteatlas.com/images/dishes/3b95e478a76a48a0897c6724d32e2509.jpg?w=905&h=510",
    menu_id: Menu.all.sample.id,
    },

    {
    name: "Fondue",
    description: "Fondue's key ingredient is cheese that is melted over a fire, with a lot of regional varieties and flavorful additions such as cherry brandy, white wine, or a sprinkle of nutmeg. It was invented out of necessity, when the alpine locals and traveling herders relied only on cheese, wine, and bread to get them through the winter.",
    category: "Dinner",
    image: "https://cdn.tasteatlas.com/Images/Dishes/79b9b4bc2e8140659f854da1dced600c.jpg?w=905&h=510",
    menu_id: Menu.all.sample.id,
    },

    {
    name: "Baguette",
    description: "The word baguette first entered use in 1920, derived from the Latin root baculum, meaning stick or staff, which became baccheto in Italian. Baguettes were first baked as long, wide loaves of bread, but a 1920 law prevented workers from beginning work before 4AM, making it impossible for bakers to finish baking the bread in time for breakfast. ",
    category: "Breakfast",
    image: "https://cdn.tasteatlas.com/Images/Dishes/6ef8ca510bb44884af294128bab03191.jpg?w=905&h=510",
    menu_id: Menu.all.sample.id,
    },

    {
    name: "Fish and Chips",
    description: "The fillets get dipped in a batter made from eggs, milk, and flour, and are then fried in oil, lard, or beef drippings along with the potatoes. The origins of this dish go back to the 17th century, when potatoes were fried as a substitute for fish in the winter months, while fried fish was introduced into the country by Jewish refugees. ",
    category: "Lunch",
    image: "https://cdn.tasteatlas.com/images/dishes/952be31521114ce89c8525996e17dbce.jpg?w=905&h=510",
    menu_id: Menu.all.sample.id,
    },

    {
    name: "Churros",
    description: "Originally invented by Spanish shepherds who could easily cook them in a pan over an open fire, today these unusually shaped, cinnamon sugar sprinkled twists are most commonly eaten in Spain and Latin America as a hot breakfast food, accompanied by a strong cup of coffee or a cup of thick hot chocolate.",
    category: "Breakfast",
    image: "https://cdn.tasteatlas.com/images/dishes/c14da069b266431293f85d910b99cfbd.jpg?w=905&h=510",
    menu_id: Menu.all.sample.id,
    },

    {
    name: "Parfait",
    description: "Today, parfaits can be made with savory ingredients as well, and there are versions made with seafood, vegetables, and even foie gras. Parfaits were originally served on decorative plates, but today they are usually layered in tall and thin flute glasses.",
    category: "Breakfast",
    image: "https://cdn.tasteatlas.com/images/dishes/e877acd673a2441bb0bcd40aab9eea39.jpg?w=905&h=510",
    menu_id: Menu.all.sample.id,
    },

    {
    name: "Miso Soup",
    description: "In Japanese restaurants in the United States, miso soup is often offered as an appetizer. The soup is thought to have medicinal properties, as it alkalizes the blood and revives the nervous system. The main ingredient is called miso - a combination of rice, salt, water, and fermented soybeans, shaped into a paste that is similar to peanut butter in texture. ",
    category: "Breakfast",
    image: "https://cdn.tasteatlas.com/images/dishes/e8183cc33f664c8983f1ec31da80698c.jpg",
    menu_id: Menu.all.sample.id,
    },

]

dishes.each do |dish_hash|
    Dish.create!(dish_hash)
end
s

# {
# name: "Miso Soup",
# description: "In Japanese restaurants in the United States, miso soup is often offered as an appetizer. The soup is thought to have medicinal properties, as it alkalizes the blood and revives the nervous system. The main ingredient is called miso - a combination of rice, salt, water, and fermented soybeans, shaped into a paste that is similar to peanut butter in texture. ",
# category: "Breakfast",
# image: "https://cdn.tasteatlas.com/images/dishes/e8183cc33f664c8983f1ec31da80698c.jpg",
# menu_id: Menu.all.sample.id,
# }
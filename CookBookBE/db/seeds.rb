# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Step.destroy_all
Cookbook.destroy_all
CookbookRecipe.destroy_all
Keyword.destroy_all
RecipeKeyword.destroy_all 

charles = User.create(username:'cbreezy', password:'nah', image:'https://upload.wikimedia.org/wikipedia/commons/6/6a/Chris_Brown_5%2C_2012.jpg')
dom = User.create(username:'domitalk', password:'nah', image:'https://vignette.wikia.nocookie.net/legendsofthemultiuniverse/images/6/67/Dominic_Toretto.jpeg/revision/latest/scale-to-width-down/340?cb=20170606035117')
griff = User.create(username:'griff', password:'nah', image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfnG_7kjdwli10xTe2qBJAodcXxhOCvAvIJtWhNKgBepA1h4Cb8Q&s')

r1 = Recipe.create(description:"blahblahblah", image:'https://hips.hearstapps.com/cosmouk.cdnds.net/15/21/1600x800/landscape_nrm_1432138418-o-poop-emoji-ice-cream-facebook.jpg?resize=480:*', prep_time:'forever', cook_time:'never', total_time:'forever never', user: charles)
r2 = Recipe.create(description:"pls", image:'https://cdn.shopify.com/s/files/1/2101/2829/products/crab_grab-FA19-Traction-angle-board_poop-brown-292_400x.png?v=1574216729', prep_time:'1', cook_time:'6', total_time:'7', user: dom)
r3 = Recipe.create(description:"no", image:'https://assets3.thrillist.com/v1/image/1814509/size/tmg-article_default_mobile.jpg', prep_time:'2', cook_time:'7', total_time:'9', user: griff)
r4 = Recipe.create(description:"idk", image:'https://images-na.ssl-images-amazon.com/images/I/71%2BJZuZS2YL._AC_SL1000_.jpg', prep_time:'3', cook_time:'8', total_time:'11', user: dom)
r5 = Recipe.create(description:"this sux", image:'https://image.shutterstock.com/image-vector/poo-emoticon-emoji-poop-face-260nw-700950988.jpg', prep_time:'4', cook_time:'9', total_time:'13', user: dom)
r6 = Recipe.create(description:"dont eat this", image:'https://miro.medium.com/max/525/1*p_f8-fZS6VBeVzLWK-RXqw.png', prep_time:'5', cook_time:'10', total_time:'15', user: griff)

Ingredient.create(recipe: r1, ingredient:'nothing edible')
Ingredient.create(recipe: r1, ingredient:'no')
Ingredient.create(recipe: r2, ingredient:'not')
Ingredient.create(recipe: r2, ingredient:'noth')
Ingredient.create(recipe: r2, ingredient:'nothi')
Ingredient.create(recipe: r3, ingredient:'nothin')
Ingredient.create(recipe: r3, ingredient:'nothing')
Ingredient.create(recipe: r4, ingredient:'nothing e')
Ingredient.create(recipe: r4, ingredient:'nothing ed')
Ingredient.create(recipe: r5, ingredient:'nothing edi')
Ingredient.create(recipe: r5, ingredient:'nothing edib')
Ingredient.create(recipe: r6, ingredient:'nothing edibl')
Ingredient.create(recipe: r6, ingredient:'n')

Step.create(recipe: r1, content:'1')
Step.create(recipe: r1, content:'2')
Step.create(recipe: r1, content:'3')
Step.create(recipe: r2, content:'4')
Step.create(recipe: r2, content:'5')
Step.create(recipe: r2, content:'6')
Step.create(recipe: r3, content:'7')
Step.create(recipe: r3, content:'8')
Step.create(recipe: r3, content:'9')
Step.create(recipe: r4, content:'10')
Step.create(recipe: r4, content:'11')
Step.create(recipe: r4, content:'12')
Step.create(recipe: r5, content:'13')
Step.create(recipe: r5, content:'14')
Step.create(recipe: r5, content:'15')
Step.create(recipe: r6, content:'16')
Step.create(recipe: r6, content:'17')
Step.create(recipe: r6, content:'18')

cb1 = Cookbook.create(user: charles, image:'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/1200px-Good_Food_Display_-_NCI_Visuals_Online.jpg', title:'my food sux', description: 'yeet in street')
cb2 = Cookbook.create(user: dom, image:'https://www.weightwatchers.com/us/sites/default/files/styles/wwvs_default_image/public/article_masthead/0p_foodlist_purple_1200x628.jpg?itok=3ErSwv7S', title:'not good pls stop', description: 'the opposite of fine dining')
cb3 = Cookbook.create(user: griff, image:'https://assets3.thrillist.com/v1/image/2848840/size/gn-gift_guide_variable_c.jpg', title:'wut iz fewd', description: 'learned how to cook from shrek')

CookbookRecipe.create(cookbook:cb1, recipe: r1)
CookbookRecipe.create(cookbook:cb1, recipe: r2)
CookbookRecipe.create(cookbook:cb1, recipe: r3)
CookbookRecipe.create(cookbook:cb2, recipe: r1)
CookbookRecipe.create(cookbook:cb2, recipe: r4)
CookbookRecipe.create(cookbook:cb2, recipe: r5)
CookbookRecipe.create(cookbook:cb3, recipe: r6)
CookbookRecipe.create(cookbook:cb3, recipe: r2)
CookbookRecipe.create(cookbook:cb3, recipe: r3)

k1 = Keyword.create(keyword:'Beef')
k2 = Keyword.create(keyword:'Chicken')
k3 = Keyword.create(keyword:'Dessert')
k4 = Keyword.create(keyword:'Gluten-Free')
k5 = Keyword.create(keyword:'Halal')
k6 = Keyword.create(keyword:'High-Protein')
k7 = Keyword.create(keyword:'Kosher')
k8 = Keyword.create(keyword:'Low-Carb')
k9 = Keyword.create(keyword:'Pasta')
k10 = Keyword.create(keyword:'Quick')
k11 = Keyword.create(keyword:'Seafood')
k12 = Keyword.create(keyword:'Soup/Stew')
k13 = Keyword.create(keyword:'Spicy')
k14 = Keyword.create(keyword:'Vegan')
k15 = Keyword.create(keyword:'Veggies')

RecipeKeyword.create(keyword: k1, recipe:r1)
RecipeKeyword.create(keyword: k1, recipe:r3)
RecipeKeyword.create(keyword: k2, recipe:r1)
RecipeKeyword.create(keyword: k3, recipe:r2)
RecipeKeyword.create(keyword: k2, recipe:r4)
RecipeKeyword.create(keyword: k4, recipe:r6)
RecipeKeyword.create(keyword: k5, recipe:r5)
RecipeKeyword.create(keyword: k6, recipe:r2)




















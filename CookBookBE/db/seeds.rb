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


# USERS
charles = User.create(username:'Cbreezy', password:'nah', image:'https://upload.wikimedia.org/wikipedia/commons/6/6a/Chris_Brown_5%2C_2012.jpg')
dom = User.create(username:'Domitalk', password:'nah', image:'https://vignette.wikia.nocookie.net/legendsofthemultiuniverse/images/6/67/Dominic_Toretto.jpeg/revision/latest/scale-to-width-down/340?cb=20170606035117')
griff = User.create(username:'Griff', password:'nah', image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfnG_7kjdwli10xTe2qBJAodcXxhOCvAvIJtWhNKgBepA1h4Cb8Q&s')
jon = User.create(username: "Jon", password: 'nah', image: 'https://previews.123rf.com/images/alexkava/alexkava1511/alexkava151100010/48395698-black-illustration-of-spoon-fork-and-chef-hat.jpg')


# RECIPES
r1 = Recipe.create(description:"Banana Pudding", image:'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2013/10/21/0/YW0409H_Banana-Cream-Pudding_s4x3.jpg.rend.hgtvcom.826.620.suffix/1406932836501.jpeg', prep_time:'20', cook_time:'45', total_time:'65', user: charles)
r2 = Recipe.create(description:"Meat Loaf", image:'https://images-gmi-pmc.edge-generalmills.com/3e0ded09-f8a2-45b6-aff7-e08ab138ed84.jpg', prep_time:'35', cook_time:'50', total_time:'125', user: dom)
r3 = Recipe.create(description:"Lasagna", image:'https://assets.kraftfoods.com/recipe_images/opendeploy/201570_640x428.jpg', prep_time:'25', cook_time:'45', total_time:'70', user: griff)
r4 = Recipe.create(description:"Chocolate Cake", image:'https://d3awvtnmmsvyot.cloudfront.net/api/file/Jqoi44f2S6aGO6RXDja1/convert?fit=max&w=1450&quality=60&cache=true&rotate=exif&compress=true', prep_time:'30', cook_time:'40', total_time:'110', user: dom)
r5 = Recipe.create(description:"Roast Chicken", image:'https://assets.marthastewart.com/styles/wmax-750/d47/roast-chicken-vegetables-potatoes-3e8b194b-0819/roast-chicken-vegetables-potatoes-3e8b194b-0819_hz.jpg?itok=UiGQxjuq', prep_time:'45', cook_time:'90', total_time:'135', user: dom)
r6 = Recipe.create(description:"Enchiladas", image:'https://www.theblackpeppercorn.com/wp-content/uploads/2013/08/Chicken-Enchiladas-full-angle-hires.jpg', prep_time:'90', cook_time:'30', total_time:'120', user: griff)



# INGREDIENTS
Ingredient.create(recipe: r1, ingredient:'4 Banana')
Ingredient.create(recipe: r1, ingredient:'1 tablespoons Vanilla Extract')
Ingredient.create(recipe: r1, ingredient:'5 ounces Vanilla Pudding Mix')
Ingredient.create(recipe: r1, ingredient:'2 cups cold milk')

Ingredient.create(recipe: r2, ingredient:'1 pound Ground Beef')
Ingredient.create(recipe: r2, ingredient:'1 Egg')
Ingredient.create(recipe: r2, ingredient:'1 chopped Onion')
Ingredient.create(recipe: r2, ingredient:'1 cup Milk')
Ingredient.create(recipe: r2, ingredient:'1 cup dried breadcrumbs')

Ingredient.create(recipe: r3, ingredient:'2 cans Canned Tomato Sauce')
Ingredient.create(recipe: r3, ingredient:'2 tablespoons White Sugar')
Ingredient.create(recipe: r3, ingredient:'1 1/2 teaspoons dried basil leaves')
Ingredient.create(recipe: r3, ingredient:'1 Can Crushed Tomatoes')
Ingredient.create(recipe: r3, ingredient:'2 cloves Garlic')
Ingredient.create(recipe: r3, ingredient:'12 Lasagna Noodles')
Ingredient.create(recipe: r3, ingredient:'3/4 pound Ground Beef')

Ingredient.create(recipe: r4, ingredient:'2 cups White Sugar')
Ingredient.create(recipe: r4, ingredient:'1 3/4 cups All-Purpose Flour')
Ingredient.create(recipe: r4, ingredient:'2 Eggs')
Ingredient.create(recipe: r4, ingredient:'3/4 Cocoa Powder')
Ingredient.create(recipe: r4, ingredient:'1/2 cup Vegetable Oil')

Ingredient.create(recipe: r5, ingredient:'5-6 pound Chicken to Roast')
Ingredient.create(recipe: r5, ingredient:'Kosher Salt to taste')
Ingredient.create(recipe: r5, ingredient:'1 Halved Lemon')
Ingredient.create(recipe: r5, ingredient:'2 tablespoons Butter')
Ingredient.create(recipe: r5, ingredient:'1 Large Yellow Onion')
Ingredient.create(recipe: r5, ingredient:'4 Carrots chopped')

Ingredient.create(recipe: r6, ingredient:'1 pound Ground Beef')
Ingredient.create(recipe: r6, ingredient:'10-14 Corn/Flour Tortillas')
Ingredient.create(recipe: r6, ingredient:'1 cup Chopped Green Onions')
Ingredient.create(recipe: r6, ingredient:'1/2 teaspoon Salt')
Ingredient.create(recipe: r6, ingredient:'28 ounce Can Enchilada Red Sauce')
Ingredient.create(recipe: r6, ingredient:'1 Medium Onion')
Ingredient.create(recipe: r6, ingredient:'2 cups Chicken Broth')





#  STEPS
Step.create(recipe: r1, content:'First Step')
Step.create(recipe: r1, content:'Second Step')
Step.create(recipe: r1, content:'Third Step')

Step.create(recipe: r2, content:'First Step')
Step.create(recipe: r2, content:'Second Step')
Step.create(recipe: r2, content:'Third Step')

Step.create(recipe: r3, content:'First Step')
Step.create(recipe: r3, content:'Second Step')
Step.create(recipe: r3, content:'Third Step')

Step.create(recipe: r4, content:'First Step')
Step.create(recipe: r4, content:'Second Step')
Step.create(recipe: r4, content:'Third Step')

Step.create(recipe: r5, content:'First Step')
Step.create(recipe: r5, content:'Second Step')
Step.create(recipe: r5, content:'Third Step')

Step.create(recipe: r6, content:'First Step')
Step.create(recipe: r6, content:'Second Step')
Step.create(recipe: r6, content:'Third Step')



# COOKBOOKS
cb1 = Cookbook.create(user: charles, image:'https://www.justonecookbook.com/wp-content/uploads/2018/10/How-to-Build-a-Kitchen-for-Cooking-Japanese-Food-w600.jpg', title:'Charles Cookbook', description: 'A Collection of Charles Recipes ')
cb2 = Cookbook.create(user: dom, image:'https://learn.compactappliance.com/wp-content/uploads/2018/02/kitchen.jpg', title:'Doms Cookbook', description: 'A Collection of Doms Recipes')
cb3 = Cookbook.create(user: griff, image:'https://media1.s-nbcnews.com/j/newscms/2019_50/3146046/191212-stock-kitchen-cooking-wok-ew-228p_02b448af054ee73a0103f9b0353a525f.fit-760w.jpg', title:'Griffs Cookbook', description: 'A Collection of Griffs Recipes')
cb3 = Cookbook.create(user: jon, image:'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fcdn-image.myrecipes.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F4_3_horizontal_-_1200x900%2Fpublic%2F1550776692%2FGettyImages-887636042.jpg%3Fitok%3Dxrvft3cr', title:'Jons Cookbook', description: 'A Collection of Jons Recipes')


# COOKBOOK RECIPES
CookbookRecipe.create(cookbook:cb1, recipe: r1)
CookbookRecipe.create(cookbook:cb1, recipe: r2)
CookbookRecipe.create(cookbook:cb1, recipe: r3)

CookbookRecipe.create(cookbook:cb2, recipe: r1)
CookbookRecipe.create(cookbook:cb2, recipe: r4)
CookbookRecipe.create(cookbook:cb2, recipe: r5)

CookbookRecipe.create(cookbook:cb3, recipe: r6)
CookbookRecipe.create(cookbook:cb3, recipe: r2)
CookbookRecipe.create(cookbook:cb3, recipe: r3)


# KEYWORDS
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


# RECIPE KEYWORD
RecipeKeyword.create(keyword: k10, recipe:r1)
RecipeKeyword.create(keyword: k3, recipe:r1)

RecipeKeyword.create(keyword: k1, recipe:r2)
RecipeKeyword.create(keyword: k6, recipe:r2)

RecipeKeyword.create(keyword: k9, recipe:r3)
RecipeKeyword.create(keyword: k1, recipe:r3)

RecipeKeyword.create(keyword: k3, recipe:r4)
RecipeKeyword.create(keyword: k10, recipe:r4)

RecipeKeyword.create(keyword: k2, recipe:r5)
RecipeKeyword.create(keyword: k8, recipe:r5)
RecipeKeyword.create(keyword: k4, recipe:r5)

RecipeKeyword.create(keyword: k1, recipe:r6)
RecipeKeyword.create(keyword: k13, recipe:r6)





















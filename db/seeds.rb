# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
"Mains Dessert Breakfast Starter".split.each { |w|
  Category.create(name: w)
}
Recipe.delete_all
Ingredient.delete_all
RecipeIngredient.delete_all


r1= Recipe.create name: 'The best broad bean salad', description: 'This is a real taste of spring! Try to find slices of Spanish ham if you can, but if you can\'t try using Italian prosciutto such as Parma ham.', instructions: 'Separate the broad beans into 2 piles – big and small. Drop the big ones into boiling water for 1 minute and then put them aside to cool down. Pop them out of their shells when they\'re cool enough to handle. Roughly mash the blanched broad beans – you can do this with a food processor, chop them up with a knife or crush them in a pestle and mortar. Mix together with the small raw beans, the pecorino, lemon juice, oil and some of the mint, finely chopped. Season to taste, then serve with the torn ham, a final zesting of lemon and the rest of the mint ripped up and scattered over the top.', picture:  'http://6f2e58107b6165c9c562-94f33990a658cbe0ad31be70884cbddb.r7.cf1.rackcdn.com/709_3_1350292652_lrg.jpg'
r2= Recipe.create name: 'Crunchy Keralan salad', description: 'This is a fantastic and really unusual salad that was inspired by a guy called Das who runs the most terrific Indian restaurants in London, called Rasa.', instructions: 'First of all you need to crack open the shell of the coconut. I normally do this by placing it on a tea towel on a hard surface and then giving it a wallop with a rolling-pin or a hammer. Once you\'ve cracked it open you can pull it apart (being careful not to spill the milk everywhere!), discarding the hard outer shell. The dark skin on the outside of the coconut\'s flesh doesn\'t bother me, especially if I\'m grating it. But if you want to remove it, a speed peeler works quite well. Once you\'ve got into your coconut, cut the peppers into quarters, remove the stalks and seeds, then finely slice. Trim your cress directly from its punnet (the easiest way to do this is to take the cress out of the punnet, wash the leafy end and stalks under a tap, then slice the stalk end off and discard it). Trim your spring onions and finely slice them. Cut the mango flesh off the stones and finely slice it (there is a knack to doing this properly – if you look at the shape of the mango, the flat stone always lies the same way, parallel with the flattest sides, so you should be able to slice the flesh off with not too much wastage). Get your pieces of coconut and grate them finely. Put all these ingredients into a large salad bowl. Lime and ginger work together really well in the dressing. Finely grate the ginger and lime zest into a small bowl, then add the lime juice and olive oil. Season to taste, and add more oil as necessary to balance the flavours of your dressing. Limes can be different strengths depending on their juiciness and size. Dress the salad just before serving, saving any extra dressing for another day, and eat straight away. Great just as it is, or with some grilled prawns or satay chicken. Also lovely as a snack inside a wrap or flatbread. So even though the coconut may be a pain to prepare it\'s well worth it...', picture: 'http://6f2e58107b6165c9c562-94f33990a658cbe0ad31be70884cbddb.r7.cf1.rackcdn.com/175_1_1350897263_lrg.jpg'

'coconut, red pepper, cress, spring onion, mango, ginger, lime, virgin olive oil, sea salt, black pepper, broad beans, pecorino, lemon, mint, Spanish ham'.split(', ').each { |w|
  Ingredient.create(name: w)
}

r1.ingredients << Ingredient.where(name: 'coconut')
r1.ingredients << Ingredient.where(name: 'red pepper')
r1.ingredients << Ingredient.where(name: 'cress')
r1.ingredients << Ingredient.where(name: 'spring onion,')
r1.ingredients << Ingredient.where(name: 'mango')
r1.ingredients << Ingredient.where(name: 'ginger')
r1.ingredients << Ingredient.where(name: 'lime')
r1.ingredients << Ingredient.where(name: 'virgin olive oil')
r1.ingredients << Ingredient.where(name: 'sea salt')
r1.ingredients << Ingredient.where(name: 'black pepper')
r2.ingredients << Ingredient.where(name: 'broad beans')
r2.ingredients << Ingredient.where(name: 'pecorino')
r2.ingredients << Ingredient.where(name: 'lemon')
r2.ingredients << Ingredient.where(name: 'mint')
r2.ingredients << Ingredient.where(name: 'Spanish ham')
r2.ingredients << Ingredient.where(name: 'sea salt')
r2.ingredients << Ingredient.where(name: 'black pepper')
r2.ingredients << Ingredient.where(name: 'virgin olive oil')

r1.save
r2.save



//
//  RecipeModel.swift
//  RecipeServer
//
//  Created by Adriana Quinones on 8/27/23.
//

import Foundation
enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}
extension Recipe{
    static let all: [Recipe] = [
     Recipe(
        name: "Juane de Gallina",
        image: "https://www.eatperu.com/wp-content/uploads/2022/03/juanes-de-gallina-peruvian-dish.jpeg",
        description: "Juane de Gallina is a Peruvian chicken, rice and egg dish, wrapped in banana leaves and steamed. It is a typical dish of Peruvian cuisine. Preparing the dish requires some patience and attention to detail but it's well worth the effort.",
        ingredients:" 3 cups white rice 480 g.\n ⅛ cup oil \n 6 sweet peppers finely chopped\n 1 red onion finely chopped, 100 g.\n 2 turmeric roots\n 1 bunch coriander\n 10 leaves sacha culantro or substitute with coriander\n 6 cups chicken broth 1.5 liters\n Salt and pepper to taste  \n 1 kg hen thighs with skin and bone\n 3 large garlic crushed\n 1 teaspoon ground turmeric\n 1 bay leaf\n14 cups chicken broth 1 liter\n Salt and pepper to taste\n  ½ cup black olives\n14 eggs boiled and peeled\n ¼ cup oil ",
        directions: "For the rice: \nPlace three cups of the chicken broth in the blender glass, along with the coriander, sacha culantro, and peeled turmeric roots. Blend at maximum speed for a couple of minutes until the mixture becomes homogeneous. Set aside the rest of the chicken broth for cooking the rice. This separation is only necessary if your blender glass is small. Otherwise, you can blend everything together. \n In a saucepan over high heat add the oil, and immediately add the finely chopped red onion and chili peppers. Sauté for a few minutes until the onion loses its color.\n Add the rice, sauté for up to three minutes, stirring occasionally to prevent the rice from sticking to the bottom of the pot. Then add all the blended broth, and the leftover broth. You should have six cups of broth. Cook over high heat until all liquid on the surface is gone. At that time, reduce the heat to a minimum and continue to cook covered for ten more minutes and turn off the stove. Set aside. \n For the hen\n Remove the skin from the pieces of hen meat. Rinse and pat dry. Put the pieces in a bowl and garnish with crushed garlic, turmeric powder, salt and pepper to taste.Turn stove to full heat. Once it is very hot, add the oil and the hen pieces. Spread them out evenly in the pot. After five minutes, turn them over so they cook on all sides. When the hen pieces are well browned, lower the temperature to half, add a liter of chicken broth, a bay leaf, and cook covered for at least twenty minutes so that the meat softens. When all the broth has evaporated, turn off the stove and remove the hen pieces from the pot. If there is a little broth left in the bottom of the pot, strain it and pour it on top of the rice.",
        category: "Main",
        datePublished: "08-25-2022",
        url:"https://www.eatperu.com/juane-de-gallina/"
     
     ),
     Recipe(
     name: "Peruvian Beef Heart Kebabs",
     image: "https://www.eatperu.com/wp-content/uploads/2022/01/anticuchos-peruanos.jpg",
     description: "Anticuchos are small pieces of meat, most often beef heart, marinated in spicy aji pepper sauce, skewered on a stick, and grilled over hot coals. Try this easy-to-prepare recipe of one of Peru's best street foods.",
     ingredients:" 1 beef heart 1.5kg \n ¼ cup aji amarillo chili paste \n 3 garlic cloves \n 1 tsp ground cumin \n 1 bay leaf \n ¼ cup vinegar \n Salt and pepper to taste ",
     directions: "In a large mixing bowl, make the sauce for the marinade. Add the aji amarillo chili paste, crushed garlic cloves, ground cumin, bay leaf, vinegar, salt, and pepper. Stir a little with a teaspoon until a smooth paste has formed. Put aside. Rinse the hearts under running water and pat dry. Lay on the cutting board, and with a sharp knife remove the large pieces of arteries and veins that are in the upper part of the hearts, as well as the fat pads. Discard. Cut the hearts in two, crosswise. Take each of the halves, and cut them into strips lengthwise. Finally, cut the strips one by one, making the classic squares of the skewers. Some squares of 2 to 3 cm on each side.Put the meat in the bowl with the marinade. Stir with a spoon and make sure all the pieces of heart are covered in the mixture. Cover the bowl with a piece of plastic wrap or a lid and let them marinate for at least eight hours. It is essential that you marinate the pieces of heart for the indicated time. Vinegar not only helps improve flavor; it also makes meat softer.Dip skewer sticks under running water. If you wish, you can soak them for half an hour before making the skewers. During cooking, this will help prevent the meat from dehydrating. Put six to eight pieces of meat on the first skewer. Repeat for each skewer.Turn the stove on to high heat, and place a grill pan on it. Place the anticucho kebabs on the hot skillet, and cook for three minutes on each side.Serve with roasted rustic potatoes and corn.",
     category: "Side",
     datePublished: "08-05-2022",
     url:"https://www.eatperu.com/anticuchos/"
  
  ),
     Recipe(
     name: "Peruvian Cocadas",
     image: "https://www.eatperu.com/wp-content/uploads/2021/11/cocada-cookies-with-coconut-on-table.jpg",
     description: "Need a tasty snack or dessert in a hurry? These delicious sweet coconut cookies are easy to make and incredibly tasty.",
     ingredients:" 3 ½ cups fresh grated coconut approx 250 g \n 1 egg white at room temperature\n 1 can of condensed milk 360 ml \n ¼ cup sugar 45 g.\n 1 tsp vanilla essence ",
     directions: "Preheat the oven to 100 ° C / 200 ° F. Prepare a baking sheet, covering it with wax paper. In a mixing bowl, place the grated coconut, condensed milk and vanilla essence. Stir well with a fork, until the coconut is completely moistened with the condensed milk. Reserve. Then, in an electric mixer, beat the egg white until stiff. When peaks form, add the sugar, and continue beating until the sugar is completely dissolved. Remove the mixer, and into the same bowl where the white is on the verge of snow, add the coconut mixture with condensed milk. Stir for a couple of minutes until you get a smooth, frothy mixture. Using a 1-scoop, place batter balls on the baking sheet. Cocadas are usually a little misshapen, and they flatten a bit during cooking, so don’t worry. Bake on low heat for an hour. When your cocadas are well browned, turn off the oven, and leave them there to rest for an hour until they cool. Remove the tray from the oven, and carefully remove them. Store them in a clean, dry place at room temperature.",
     category: "Dessert",
     datePublished: "08-10-2022",
     url:"hhttps://www.eatperu.com/cocadas/"
  
  ),
     Recipe(
     name: "Passion Fruit Pisco Cocktail",
     image: "https://www.eatperu.com/wp-content/uploads/2021/01/delicious-peruvian-maracuya-sour-drink.jpg",
     description: "This cocktail recipe is made with passion fruit, resulting in a more complex and sweet flavor. Light and refreshing, the sweetness from the passion fruit pairs well with the acidity and bitter taste of the lime juice. Easy to prepare and goes great with many Peruvian dishes.",
     ingredients:" 1 cup pisco 8 oz. \n 2 cups water \n1 cup passion fruit maracuya pulp, 8 oz. \n 3 tbsp lime juice 1 oz. \n ½ cup simple syrup 4 oz. \n 2 egg whites 4 oz. \n 4 drops angostura bitters optional \n 6 cubes Ice to taste ",
     directions: "Place the water, along with the passion fruit pulp in a small saucepan. Cook it over high heat until it has reduced a little more than half. In our case, it was approximately 15 minutes. With cooking, the pulp is easily detached from the seeds. Then, strain the passion fruit cooking over a metal strainer. The seeds will remain on top of the strainer. So, mash the seeds repeatedly with a spoon until they have lost all their moisture and get a thick juice. When you have the passion fruit juice, which should be approximately 6 oz, place it in the blender glass, along with the lime, pisco, and syrup. Beat for thirty seconds at maximum speed. Stop the blender. Uncover the blender, add the egg whites and ice. To prevent a lot of foam from forming, beat for a maximum of thirty seconds. Next, serve the maracuyá sour in short, chilled glasses. Place two drops of angostura bitters in each glass and stir. This is optional. You can decorate this cocktail with slices of lime, mint leaves, and passion fruit seeds.",
     category: "Drink",
     datePublished: "03-10-2022",
     url:"https://www.eatperu.com/maracuya-sour/"
  
  ),
     Recipe(
     name: "Peruvian Hot Chocolate",
     image: "https://www.eatperu.com/wp-content/uploads/2020/06/close-up-of-milky-dark-hot-chocolate-drink-with-star-anise.jpg",
     description: "This cocktail recipe is made with passion fruit, resulting in a more complex and sweet flavor. Light and refreshing, the sweetness from the passion fruit pairs well with the acidity and bitter taste of the lime juice. Easy to prepare and goes great with many Peruvian dishes.",
     ingredients:" 1 cinnamon stick \n 2 cloves \n 1 piece of dried orange peel (about an inch long) \n 1 Star anise \n 1 pinch of nutmeg \n and ½ cup of water. \n Additionally \n prepare 2 cups of whole milk (240 ml) \n ½ cup of evaporated milk \n 3 tablespoons of Peruvian bitter cocoa \n 1 ½ tablespoons of cornstarch \n 1 teaspoon of instant coffee \n and sugar to taste for this recipe. ",
     directions: "Begin by gathering all the required ingredients. Place a small pot on the stove over medium heat and pour in half a cup of water, adding the cinnamon stick, cloves, and star anise immediately. Allow the spice infusion to cook, half covered, over low heat for a minimum of 10 minutes. Turn off the stove, remove the pot from the heat, and strain out the spices, retaining the infusion. Return the infused liquid to the pot and use a hand mixer to dissolve the dark chocolate and instant coffee into it, ensuring thorough blending. Incorporate the whole milk and evaporated milk, stirring until the mixture is well combined. Introduce a pinch of nutmeg and continue beating without allowing the mixture to boil. Dissolve a tablespoon of cornstarch in three tablespoons of water, and then add the diluted cornstarch to the chocolate mixture, continuing to beat in circular motions until the chocolate achieves a thick consistency. If desired, an additional teaspoon of cornstarch can be added. Cook for an additional three minutes, adjust sweetness with sugar according to taste, and serve the hot chocolate in large cups. For those who enjoy a foamy texture, blending before serving is an option. To enhance the presentation, decorate with whipped cream, marshmallows, or a sprinkle of cinnamon powder.",
     category: "Drink",
     datePublished: "03-10-2022",
     url:"https://www.eatperu.com/peruvian-hot-chocolate/"
  
  ),
     Recipe(
     name: "Peruvian Sautéed Green Beans And Chicken",
     image: "https://www.eatperu.com/wp-content/uploads/2022/07/green-beans-anc-chicken-asian-peruvian-stir-fry.jpg",
     description: "A Peruvian-Asian fusion dish featuring a mixture of sautéed vegetables with diced chicken. Easy to prepare and packed full of goodness.",
     ingredients:" 1 chicken breast without skin and deboned, 650 g. \n 1 ginger root \n 2 tablespoons vinegar \n 2 tablespoons soy sauce \n 1 teaspoon garlic powder \n 1 teaspoon cumin powder \n 1 teaspoon paprika powder \n 1 teaspoon oregano powder \n 20 green beans 200 g. \n ½ purple onion 100 g. \n 1 large red bell pepper 175 g. \n 1 ¼ cup oil 60 ml \n 1 sprig parsley \n Salt to taste ",
     directions: "Wash the chicken breast under running water, and dry it well with a kitchen towel. Put it on a cutting board, and chop it into cubes of about three centimeters. Peel and grate the ginger root. Next, put the chicken cubes in a bowl. Add the grated ginger root, vinegar, soy sauce, garlic powder, ground cumin, paprika, oregano powder, and salt to taste. Mix with a spoon until all the marinade ingredients are well combined. Cover the bowl, and store it in the fridge for about thirty minutes. Meanwhile, prepare the vegetables. Cut the stems of the green beans and then chop them in two. Peel the onion, and slice it into julienne strips. The seeds and pale internal veins of the bell pepper should be removed. Then chop the pepper into julienne strips, the same size as the green beans. Discard the stem. Put a saucepan with a liter of water on the stove on maximum heat. As soon as it starts to boil, add the green beans and cook for approximately ten minutes until tender. Remove from the heat, and drain excess water by putting the beans in a colander. Immediately add a little cold water on top (this will keep the beans bright green). Remove the chicken from the refrigerator. Place about four tablespoons of oil in a separate large pot and turn the stove to maximum heat. When the oil is hot, add the chicken to the pot and fry it for about five minutes, turning it from time to time so that it browns evenly. Add the onions, peppers, and green beans when the chicken is semi-cooked. Stir and cook cover for about five more minutes. As the chicken finishes cooking, wash the potatoes, peel and cut them into sticks. You can fry them in oil with the remaining oil immediately or dip them in water to fry just as the chicken is ready. Adjust the salt if required. Serve the saltado de vainitas with French fries. Top with chopped parsley to taste.",
     category: "Main",
     datePublished: "12-22-2022",
     url:"https://www.eatperu.com/saltado-de-vainitas/"
  
  ),
     Recipe(
     name: "Peruvian Minute Soup",
     image: "https://www.eatperu.com/wp-content/uploads/2021/09/bowl-of-peruvian-beef-and-noodle-soup.jpg",
     description: "Bring your family together for a tasty, nutritious meal by preparing this classic soup, packed with fresh vegetables. Fill a generous bowl with a satisfying helping of this taste of Peru. An easy to prepare crowd pleaser.",
     ingredients:" ½ pound ground beef \n ¼ teaspoon salt \n¼ teaspoon pepper \n 1 tablespoon oil \n 1 large yellow onion \n 1 large bay leaf or 2 small bay leaves \n 2 cloves garlic \n1 potato (peeled) \n 2 medium carrots \n1-2 tablespoons oregano\n 2 tablespoons tomato paste \n 6 cups beef broth\n ¼ pound angel hair pasta or spaghetti noodles \n Egg (for topping) \n Parsley (for topping) ",
     directions: "Season the ground beef with salt and pepper. Set aside. Chop the onions, potatoes, and carrots to small bits. Mince the garlic. In a pot at medium heat, add oil and sauté the onions and bay leaf till the onions are slightly translucent, add the garlic and cook till aromatic. Add in the chopped potatoes and carrots, sautéing till these soften. Mix in oregano and the ground beef, cook till these change in color or have turned a darker brown. Add the tomato paste, and beef broth. Stir and let this simmer for 7-10 minutes. After, have a taste and add salt and pepper as needed. To cook the noodles, simple add them into the pot and cook al dente per packaging instructions. Remembering to mix this often. Serve with a fried egg on top, or decorate with parsley.",
     category: "Soup",
     datePublished: "12-31-2022",
     url:"https://www.eatperu.com/sopa-a-la-minuta/"
  
  ),
     Recipe(
     name: "Peruvian Chocolate-Covered Marshmallows",
     image: "https://www.eatperu.com/wp-content/uploads/2022/12/Pieces-of-chocolate-covered-marshmallow-bonbons.jpg",
     description: "Light and airy meringue covered in a velvety layer of chocolate. Our simple recipe is very easy to make and is perfect for entertaining or for a special treat for yourself.",
     ingredients:" 1 cup of chopped semisweet chocolate \n 1 tablespoon of unflavored gelatin \n ¼ cup of cold water \n3 egg whites (approximately 120 grams)\n and 1 cup of white or light brown sugar. \n Additionally, cookies will be used as the base for this recipe.",
     directions: " To prepare this delightful treat, begin by melting the chocolate in the microwave for 20 seconds, ensuring a smooth consistency. If further heat is required, utilize 15-second intervals, and then set it aside to cool. Next, combine cold water and gelatin, dissolving the gelatin powder over low heat in a pan. Employ the double boiler technique by placing a bowl over a pot filled a third of the way with simmering water, ensuring it doesn't touch the water. Whisk egg whites into the bowl until they appear bubbly. Gradually increase the heat and add sugar, followed by the dissolved gelatin water. Continue whisking until stiff peaks form, then transfer the mixture into a piping bag. For an organized workspace, arrange cookies on a baking sheet lined with parchment paper. Pipe the mixture over the cookies, fully covering them, and refrigerate for 10-15 minutes. Before applying the chocolate, ensure the meringue mixture has slightly solidified. Alternatively, dip the meringue cookies into chocolate contained in a tall glass. Coat everything with a thin chocolate layer from tip to base, and chill for another 10-15 minutes until a firm chocolate shell forms. Carefully remove the cookies from the parchment paper before serving, and relish in this delicious creation.",
     category: "Dessert",
     datePublished: "12-28-2022",
     url:"https://www.eatperu.com/besos-de-moza/"
  
  ),
    ]
}

class CategoryModel2 {
  final String category;
  final List<RecipeModel2> recipes;
  final String description;
  final bool isTrend;
  final String image;

  CategoryModel2({
    required this.category,
    required this.recipes,
    required this.description,
    required this.isTrend,
    required this.image,
  });
}

class RecipeModel2 {
  final String name;
  final String description;
  final String level;
  final String total;
  final String yield;
  final List<IngredientModel2> ingredients;
  final List<String> directions;
  final List<String> tags;
  final bool isTrend;
  final String image;

  RecipeModel2({
    required this.name,
    required this.description,
    required this.level,
    required this.total,
    required this.yield,
    required this.ingredients,
    required this.directions,
    required this.tags,
    required this.isTrend,
    required this.image,
  });
}

class IngredientModel2 {
  final String quantity;
  final String name;
  final String type;

  IngredientModel2({
    required this.quantity,
    required this.name,
    required this.type,
  });
}

// List<RecipesModel> recipesData = [
//   RecipesModel('All'),
//   RecipesModel('Popular this week'),
//   RecipesModel('Newest'),
//   RecipesModel('Soup'),
//   RecipesModel('FastFood'),
//   RecipesModel('SeaFood'),
//   RecipesModel('Pie Recipes'),
// ];
//
// or
List<CategoryModel2> recipesData = [
  CategoryModel2(
    category: 'All',
    recipes: [
      RecipeModel2(
        name: 'Cherry Pie',
        description:
            'Though cherries are synonymous with summer, their deeply tart and sweet flavor should be enjoyed all year round. If you freeze a few after your trip to the orchard (just be sure to pit them first!), you’ll have them on hand for everything from refreshing cocktails to savory sides. Fresh, frozen or even dried, you’ll find that they add a pop of flavor to a variety of different dishes. If you’re looking for inspiration, you’re in the right place. We’ve rounded up all our favorite cherry recipes right here, starting with cherry pie — a quintessential summer fruit dessert. We love that this recipe calls for homemade pie dough and combines tart cherries, balsamic vinegar and ice cream for the perfect balance of savory and sweet. '
            'You’ll want to keep this classic top of mind for your next barbecue.',
        level: 'Easy',
        total: '2 hr 30 min',
        yield: '8 servings',
        ingredients: [
          IngredientModel2(
            quantity: '1 1/2',
            name:
                'sticks (12 tablespoons) salted butter, cold and cut into pieces',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '3/4 ',
            name: 'cup vegetable shortening, cold and cut into pieces ',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '3 cups',
            name: 'all-purpose flour, plus more for rolling the dough',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '2 ',
            name: 'large eggs',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '5 ',
            name: 'tablespoons cold water ',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '2 ',
            name: 'tablespoons sugar, plus more for sprinkling',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '1  ',
            name: 'tablespoon white vinegar',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '1 ',
            name: 'teaspoon kosher salt ',
            type: 'type',
          ),
        ],
        directions: [
          'For the sweet pie crust: In a large bowl using a pastry cutter, gradually work the butter and shortening into the flour until it resembles coarse meal, for 3 or 4 minutes. In a small bowl, beat one of the eggs with a fork and pour it into the flour mixture. Add the cold water, sugar, white vinegar and salt. Stir gently to combine.',
          'Form the dough into 2 evenly sized balls and place each ball into a gallon resealable plastic bag. Using a rolling pin, slightly flatten each ball of dough (to about 1/2 inch thick) to make rolling easier later. Seal the bags and place them in the freezer until you need them. (If you will be using them immediately, it\'s still a good idea to put them in the freezer for 15 to 20 minutes to chill.)',
          'For the filling: Combine the cherries and sugar in a medium saucepan over medium heat and cook until the juices release and are hot and bubbling, about 5 minutes. Stir in the balsamic vinegar and cook for 1 minute. Stir together the cornstarch and lemon juice in a small bowl until combined and add to the cherry mixture. Continue to cook until glossy and thickened, 2 to 3 minutes. Remove from the heat and let cool completely. Cover and refrigerate until ready to use.',
          'When you are ready to make the crust, remove the dough from the freezer and let thaw for 15 minutes. Preheat the oven to 375 degrees F.',
          'On a floured surface, roll out one piece of dough starting at the center and working your way out. (Sprinkle some flour over top of the dough if it\'s a bit too moist.) If the dough is sticking to the countertop, use a metal spatula and carefully scrape it up and flip it over, then continue rolling until it\'s about 1/2 inch larger in diameter than your pie pan.',
          'With a spatula, lift the dough into the pie pan. Gently press the dough against the edges of the pan. Go around the pie pan pinching and tucking the dough to make a clean edge. Fill with the cooled cherry mixture.',
          'Roll out the second dough the same size and place it over the pie. Trim off the edges and crimp the top and bottom crusts together to seal them. Cut a few vent holes in the top. Beat the remaining egg in a small bowl for the egg wash. Brush the top with the egg wash and sprinkle with sugar',
          'Put the pie onto a rimmed baking sheet lined with foil and bake until the filling is bubbling and the crust is browned, about 50 minutes. If the crust is getting too brown before the pie is finished, cover with foil and continue baking.',
          'Serve with vanilla ice cream.',
        ],
        tags: [],
        isTrend: false,
        image: 'assets/images/recipes/cherry pie.jpeg',
      ),
      RecipeModel2(
        name: 'Cherry Pie',
        description:
            'Though cherries are synonymous with summer, their deeply tart and sweet flavor should be enjoyed all year round. If you freeze a few after your trip to the orchard (just be sure to pit them first!), you’ll have them on hand for everything from refreshing cocktails to savory sides. Fresh, frozen or even dried, you’ll find that they add a pop of flavor to a variety of different dishes. If you’re looking for inspiration, you’re in the right place. We’ve rounded up all our favorite cherry recipes right here, starting with cherry pie — a quintessential summer fruit dessert. We love that this recipe calls for homemade pie dough and combines tart cherries, balsamic vinegar and ice cream for the perfect balance of savory and sweet. '
            'You’ll want to keep this classic top of mind for your next barbecue.',
        level: 'Easy',
        total: '2 hr 30 min (includes chilling, cooling and thawing times)',
        yield: '8 servings',
        ingredients: [
          IngredientModel2(
            quantity:
                '1 1/2 sticks (12 tablespoons) salted butter, cold and cut into pieces',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '3/4 cup vegetable shortening, cold and cut into pieces ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity:
                '3 cups all-purpose flour, plus more for rolling the dough',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '2 large eggs',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '5 tablespoons cold water ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '2 tablespoons sugar, plus more for sprinkling',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '1 tablespoon white vinegar ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '1 teaspoon kosher salt ',
            name: 'name',
            type: 'type',
          ),
        ],
        directions: [
          'For the sweet pie crust: In a large bowl using a pastry cutter, gradually work the butter and shortening into the flour until it resembles coarse meal, for 3 or 4 minutes. In a small bowl, beat one of the eggs with a fork and pour it into the flour mixture. Add the cold water, sugar, white vinegar and salt. Stir gently to combine.',
          'Form the dough into 2 evenly sized balls and place each ball into a gallon resealable plastic bag. Using a rolling pin, slightly flatten each ball of dough (to about 1/2 inch thick) to make rolling easier later. Seal the bags and place them in the freezer until you need them. (If you will be using them immediately, it\'s still a good idea to put them in the freezer for 15 to 20 minutes to chill.)',
          'For the filling: Combine the cherries and sugar in a medium saucepan over medium heat and cook until the juices release and are hot and bubbling, about 5 minutes. Stir in the balsamic vinegar and cook for 1 minute. Stir together the cornstarch and lemon juice in a small bowl until combined and add to the cherry mixture. Continue to cook until glossy and thickened, 2 to 3 minutes. Remove from the heat and let cool completely. Cover and refrigerate until ready to use.',
          'When you are ready to make the crust, remove the dough from the freezer and let thaw for 15 minutes. Preheat the oven to 375 degrees F.',
          'On a floured surface, roll out one piece of dough starting at the center and working your way out. (Sprinkle some flour over top of the dough if it\'s a bit too moist.) If the dough is sticking to the countertop, use a metal spatula and carefully scrape it up and flip it over, then continue rolling until it\'s about 1/2 inch larger in diameter than your pie pan.',
          'With a spatula, lift the dough into the pie pan. Gently press the dough against the edges of the pan. Go around the pie pan pinching and tucking the dough to make a clean edge. Fill with the cooled cherry mixture.',
          'Roll out the second dough the same size and place it over the pie. Trim off the edges and crimp the top and bottom crusts together to seal them. Cut a few vent holes in the top. Beat the remaining egg in a small bowl for the egg wash. Brush the top with the egg wash and sprinkle with sugar',
          'Put the pie onto a rimmed baking sheet lined with foil and bake until the filling is bubbling and the crust is browned, about 50 minutes. If the crust is getting too brown before the pie is finished, cover with foil and continue baking.',
          'Serve with vanilla ice cream.',
        ],
        tags: [],
        isTrend: false,
        image: 'assets/images/recipes/cherry pie.jpeg',
      ),
      RecipeModel2(
        name: 'Cherry Pie',
        description:
            'Though cherries are synonymous with summer, their deeply tart and sweet flavor should be enjoyed all year round. If you freeze a few after your trip to the orchard (just be sure to pit them first!), you’ll have them on hand for everything from refreshing cocktails to savory sides. Fresh, frozen or even dried, you’ll find that they add a pop of flavor to a variety of different dishes. If you’re looking for inspiration, you’re in the right place. We’ve rounded up all our favorite cherry recipes right here, starting with cherry pie — a quintessential summer fruit dessert. We love that this recipe calls for homemade pie dough and combines tart cherries, balsamic vinegar and ice cream for the perfect balance of savory and sweet. '
            'You’ll want to keep this classic top of mind for your next barbecue.',
        level: 'Easy',
        total: '2 hr 30 min (includes chilling, cooling and thawing times)',
        yield: '8 servings',
        ingredients: [
          IngredientModel2(
            quantity:
                '1 1/2 sticks (12 tablespoons) salted butter, cold and cut into pieces',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '3/4 cup vegetable shortening, cold and cut into pieces ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity:
                '3 cups all-purpose flour, plus more for rolling the dough',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '2 large eggs',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '5 tablespoons cold water ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '2 tablespoons sugar, plus more for sprinkling',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '1 tablespoon white vinegar ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '1 teaspoon kosher salt ',
            name: 'name',
            type: 'type',
          ),
        ],
        directions: [
          'For the sweet pie crust: In a large bowl using a pastry cutter, gradually work the butter and shortening into the flour until it resembles coarse meal, for 3 or 4 minutes. In a small bowl, beat one of the eggs with a fork and pour it into the flour mixture. Add the cold water, sugar, white vinegar and salt. Stir gently to combine.',
          'Form the dough into 2 evenly sized balls and place each ball into a gallon resealable plastic bag. Using a rolling pin, slightly flatten each ball of dough (to about 1/2 inch thick) to make rolling easier later. Seal the bags and place them in the freezer until you need them. (If you will be using them immediately, it\'s still a good idea to put them in the freezer for 15 to 20 minutes to chill.)',
          'For the filling: Combine the cherries and sugar in a medium saucepan over medium heat and cook until the juices release and are hot and bubbling, about 5 minutes. Stir in the balsamic vinegar and cook for 1 minute. Stir together the cornstarch and lemon juice in a small bowl until combined and add to the cherry mixture. Continue to cook until glossy and thickened, 2 to 3 minutes. Remove from the heat and let cool completely. Cover and refrigerate until ready to use.',
          'When you are ready to make the crust, remove the dough from the freezer and let thaw for 15 minutes. Preheat the oven to 375 degrees F.',
          'On a floured surface, roll out one piece of dough starting at the center and working your way out. (Sprinkle some flour over top of the dough if it\'s a bit too moist.) If the dough is sticking to the countertop, use a metal spatula and carefully scrape it up and flip it over, then continue rolling until it\'s about 1/2 inch larger in diameter than your pie pan.',
          'With a spatula, lift the dough into the pie pan. Gently press the dough against the edges of the pan. Go around the pie pan pinching and tucking the dough to make a clean edge. Fill with the cooled cherry mixture.',
          'Roll out the second dough the same size and place it over the pie. Trim off the edges and crimp the top and bottom crusts together to seal them. Cut a few vent holes in the top. Beat the remaining egg in a small bowl for the egg wash. Brush the top with the egg wash and sprinkle with sugar',
          'Put the pie onto a rimmed baking sheet lined with foil and bake until the filling is bubbling and the crust is browned, about 50 minutes. If the crust is getting too brown before the pie is finished, cover with foil and continue baking.',
          'Serve with vanilla ice cream.',
        ],
        tags: [],
        isTrend: false,
        image: 'assets/images/recipes/cherry pie.jpeg',
      ),
      RecipeModel2(
        name: 'Cherry Pie',
        description:
            'Though cherries are synonymous with summer, their deeply tart and sweet flavor should be enjoyed all year round. If you freeze a few after your trip to the orchard (just be sure to pit them first!), you’ll have them on hand for everything from refreshing cocktails to savory sides. Fresh, frozen or even dried, you’ll find that they add a pop of flavor to a variety of different dishes. If you’re looking for inspiration, you’re in the right place. We’ve rounded up all our favorite cherry recipes right here, starting with cherry pie — a quintessential summer fruit dessert. We love that this recipe calls for homemade pie dough and combines tart cherries, balsamic vinegar and ice cream for the perfect balance of savory and sweet. '
            'You’ll want to keep this classic top of mind for your next barbecue.',
        level: 'Easy',
        total: '2 hr 30 min (includes chilling, cooling and thawing times)',
        yield: '8 servings',
        ingredients: [
          IngredientModel2(
            quantity:
                '1 1/2 sticks (12 tablespoons) salted butter, cold and cut into pieces',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '3/4 cup vegetable shortening, cold and cut into pieces ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity:
                '3 cups all-purpose flour, plus more for rolling the dough',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '2 large eggs',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '5 tablespoons cold water ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '2 tablespoons sugar, plus more for sprinkling',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '1 tablespoon white vinegar ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '1 teaspoon kosher salt ',
            name: 'name',
            type: 'type',
          ),
        ],
        directions: [
          'For the sweet pie crust: In a large bowl using a pastry cutter, gradually work the butter and shortening into the flour until it resembles coarse meal, for 3 or 4 minutes. In a small bowl, beat one of the eggs with a fork and pour it into the flour mixture. Add the cold water, sugar, white vinegar and salt. Stir gently to combine.',
          'Form the dough into 2 evenly sized balls and place each ball into a gallon resealable plastic bag. Using a rolling pin, slightly flatten each ball of dough (to about 1/2 inch thick) to make rolling easier later. Seal the bags and place them in the freezer until you need them. (If you will be using them immediately, it\'s still a good idea to put them in the freezer for 15 to 20 minutes to chill.)',
          'For the filling: Combine the cherries and sugar in a medium saucepan over medium heat and cook until the juices release and are hot and bubbling, about 5 minutes. Stir in the balsamic vinegar and cook for 1 minute. Stir together the cornstarch and lemon juice in a small bowl until combined and add to the cherry mixture. Continue to cook until glossy and thickened, 2 to 3 minutes. Remove from the heat and let cool completely. Cover and refrigerate until ready to use.',
          'When you are ready to make the crust, remove the dough from the freezer and let thaw for 15 minutes. Preheat the oven to 375 degrees F.',
          'On a floured surface, roll out one piece of dough starting at the center and working your way out. (Sprinkle some flour over top of the dough if it\'s a bit too moist.) If the dough is sticking to the countertop, use a metal spatula and carefully scrape it up and flip it over, then continue rolling until it\'s about 1/2 inch larger in diameter than your pie pan.',
          'With a spatula, lift the dough into the pie pan. Gently press the dough against the edges of the pan. Go around the pie pan pinching and tucking the dough to make a clean edge. Fill with the cooled cherry mixture.',
          'Roll out the second dough the same size and place it over the pie. Trim off the edges and crimp the top and bottom crusts together to seal them. Cut a few vent holes in the top. Beat the remaining egg in a small bowl for the egg wash. Brush the top with the egg wash and sprinkle with sugar',
          'Put the pie onto a rimmed baking sheet lined with foil and bake until the filling is bubbling and the crust is browned, about 50 minutes. If the crust is getting too brown before the pie is finished, cover with foil and continue baking.',
          'Serve with vanilla ice cream.',
        ],
        tags: [],
        isTrend: false,
        image: 'assets/images/recipes/cherry pie.jpeg',
      ),
    ],
    description:
        'Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]',
    isTrend: false,
    image: 'assets/images/seafood.jpeg',
  ),
  CategoryModel2(
    category: 'Popular this week',
    recipes: [
      RecipeModel2(
        name: 'Cherry Pie Popular this week',
        description:
            'Though cherries are synonymous with summer, their deeply tart and sweet flavor should be enjoyed all year round. If you freeze a few after your trip to the orchard (just be sure to pit them first!), you’ll have them on hand for everything from refreshing cocktails to savory sides. Fresh, frozen or even dried, you’ll find that they add a pop of flavor to a variety of different dishes. If you’re looking for inspiration, you’re in the right place. We’ve rounded up all our favorite cherry recipes right here, starting with cherry pie — a quintessential summer fruit dessert. We love that this recipe calls for homemade pie dough and combines tart cherries, balsamic vinegar and ice cream for the perfect balance of savory and sweet. '
            'You’ll want to keep this classic top of mind for your next barbecue.',
        level: 'Easy',
        total: '2 hr 30 min (includes chilling, cooling and thawing times)',
        yield: '8 servings',
        ingredients: [
          IngredientModel2(
            quantity:
                '1 1/2 sticks (12 tablespoons) salted butter, cold and cut into pieces',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '3/4 cup vegetable shortening, cold and cut into pieces ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity:
                '3 cups all-purpose flour, plus more for rolling the dough',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '2 large eggs',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '5 tablespoons cold water ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '2 tablespoons sugar, plus more for sprinkling',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '1 tablespoon white vinegar ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '1 teaspoon kosher salt ',
            name: 'name',
            type: 'type',
          ),
        ],
        directions: [
          'For the sweet pie crust: In a large bowl using a pastry cutter, gradually work the butter and shortening into the flour until it resembles coarse meal, for 3 or 4 minutes. In a small bowl, beat one of the eggs with a fork and pour it into the flour mixture. Add the cold water, sugar, white vinegar and salt. Stir gently to combine.',
          'Form the dough into 2 evenly sized balls and place each ball into a gallon resealable plastic bag. Using a rolling pin, slightly flatten each ball of dough (to about 1/2 inch thick) to make rolling easier later. Seal the bags and place them in the freezer until you need them. (If you will be using them immediately, it\'s still a good idea to put them in the freezer for 15 to 20 minutes to chill.)',
          'For the filling: Combine the cherries and sugar in a medium saucepan over medium heat and cook until the juices release and are hot and bubbling, about 5 minutes. Stir in the balsamic vinegar and cook for 1 minute. Stir together the cornstarch and lemon juice in a small bowl until combined and add to the cherry mixture. Continue to cook until glossy and thickened, 2 to 3 minutes. Remove from the heat and let cool completely. Cover and refrigerate until ready to use.',
          'When you are ready to make the crust, remove the dough from the freezer and let thaw for 15 minutes. Preheat the oven to 375 degrees F.',
          'On a floured surface, roll out one piece of dough starting at the center and working your way out. (Sprinkle some flour over top of the dough if it\'s a bit too moist.) If the dough is sticking to the countertop, use a metal spatula and carefully scrape it up and flip it over, then continue rolling until it\'s about 1/2 inch larger in diameter than your pie pan.',
          'With a spatula, lift the dough into the pie pan. Gently press the dough against the edges of the pan. Go around the pie pan pinching and tucking the dough to make a clean edge. Fill with the cooled cherry mixture.',
          'Roll out the second dough the same size and place it over the pie. Trim off the edges and crimp the top and bottom crusts together to seal them. Cut a few vent holes in the top. Beat the remaining egg in a small bowl for the egg wash. Brush the top with the egg wash and sprinkle with sugar',
          'Put the pie onto a rimmed baking sheet lined with foil and bake until the filling is bubbling and the crust is browned, about 50 minutes. If the crust is getting too brown before the pie is finished, cover with foil and continue baking.',
          'Serve with vanilla ice cream.',
        ],
        tags: [],
        isTrend: false,
        image: 'assets/images/recipes/cherry pie.jpeg',
      ),
    ],
    description:
        'Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]',
    isTrend: false,
    image: 'assets/images/seafood.jpeg',
  ),
  CategoryModel2(
    category: 'Newest',
    recipes: [
      RecipeModel2(
        name: 'Cherry Pie Newest',
        description:
            'Though cherries are synonymous with summer, their deeply tart and sweet flavor should be enjoyed all year round. If you freeze a few after your trip to the orchard (just be sure to pit them first!), you’ll have them on hand for everything from refreshing cocktails to savory sides. Fresh, frozen or even dried, you’ll find that they add a pop of flavor to a variety of different dishes. If you’re looking for inspiration, you’re in the right place. We’ve rounded up all our favorite cherry recipes right here, starting with cherry pie — a quintessential summer fruit dessert. We love that this recipe calls for homemade pie dough and combines tart cherries, balsamic vinegar and ice cream for the perfect balance of savory and sweet. '
            'You’ll want to keep this classic top of mind for your next barbecue.',
        level: 'Easy',
        total: '2 hr 30 min (includes chilling, cooling and thawing times)',
        yield: '8 servings',
        ingredients: [
          IngredientModel2(
            quantity:
                '1 1/2 sticks (12 tablespoons) salted butter, cold and cut into pieces',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '3/4 cup vegetable shortening, cold and cut into pieces ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity:
                '3 cups all-purpose flour, plus more for rolling the dough',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '2 large eggs',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '5 tablespoons cold water ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '2 tablespoons sugar, plus more for sprinkling',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '1 tablespoon white vinegar ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '1 teaspoon kosher salt ',
            name: 'name',
            type: 'type',
          ),
        ],
        directions: [
          'For the sweet pie crust: In a large bowl using a pastry cutter, gradually work the butter and shortening into the flour until it resembles coarse meal, for 3 or 4 minutes. In a small bowl, beat one of the eggs with a fork and pour it into the flour mixture. Add the cold water, sugar, white vinegar and salt. Stir gently to combine.',
          'Form the dough into 2 evenly sized balls and place each ball into a gallon resealable plastic bag. Using a rolling pin, slightly flatten each ball of dough (to about 1/2 inch thick) to make rolling easier later. Seal the bags and place them in the freezer until you need them. (If you will be using them immediately, it\'s still a good idea to put them in the freezer for 15 to 20 minutes to chill.)',
          'For the filling: Combine the cherries and sugar in a medium saucepan over medium heat and cook until the juices release and are hot and bubbling, about 5 minutes. Stir in the balsamic vinegar and cook for 1 minute. Stir together the cornstarch and lemon juice in a small bowl until combined and add to the cherry mixture. Continue to cook until glossy and thickened, 2 to 3 minutes. Remove from the heat and let cool completely. Cover and refrigerate until ready to use.',
          'When you are ready to make the crust, remove the dough from the freezer and let thaw for 15 minutes. Preheat the oven to 375 degrees F.',
          'On a floured surface, roll out one piece of dough starting at the center and working your way out. (Sprinkle some flour over top of the dough if it\'s a bit too moist.) If the dough is sticking to the countertop, use a metal spatula and carefully scrape it up and flip it over, then continue rolling until it\'s about 1/2 inch larger in diameter than your pie pan.',
          'With a spatula, lift the dough into the pie pan. Gently press the dough against the edges of the pan. Go around the pie pan pinching and tucking the dough to make a clean edge. Fill with the cooled cherry mixture.',
          'Roll out the second dough the same size and place it over the pie. Trim off the edges and crimp the top and bottom crusts together to seal them. Cut a few vent holes in the top. Beat the remaining egg in a small bowl for the egg wash. Brush the top with the egg wash and sprinkle with sugar',
          'Put the pie onto a rimmed baking sheet lined with foil and bake until the filling is bubbling and the crust is browned, about 50 minutes. If the crust is getting too brown before the pie is finished, cover with foil and continue baking.',
          'Serve with vanilla ice cream.',
        ],
        tags: [],
        isTrend: false,
        image: 'assets/images/recipes/cherry pie.jpeg',
      ),
    ],
    description:
        'Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]',
    isTrend: false,
    image: 'assets/images/seafood.jpeg',
  ),
  CategoryModel2(
    category: 'Soup',
    recipes: [],
    description:
        'Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]',
    isTrend: false,
    image: 'assets/images/seafood.jpeg',
  ),
  CategoryModel2(
    category: 'Pie Recipes',
    recipes: [
      RecipeModel2(
        name: 'Cherry Pie Recipes',
        description:
            'Though cherries are synonymous with summer, their deeply tart and sweet flavor should be enjoyed all year round. If you freeze a few after your trip to the orchard (just be sure to pit them first!), you’ll have them on hand for everything from refreshing cocktails to savory sides. Fresh, frozen or even dried, you’ll find that they add a pop of flavor to a variety of different dishes. If you’re looking for inspiration, you’re in the right place. We’ve rounded up all our favorite cherry recipes right here, starting with cherry pie — a quintessential summer fruit dessert. We love that this recipe calls for homemade pie dough and combines tart cherries, balsamic vinegar and ice cream for the perfect balance of savory and sweet. '
            'You’ll want to keep this classic top of mind for your next barbecue.',
        level: 'Easy',
        total: '2 hr 30 min (includes chilling, cooling and thawing times)',
        yield: '8 servings',
        ingredients: [
          IngredientModel2(
            quantity:
                '1 1/2 sticks (12 tablespoons) salted butter, cold and cut into pieces',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '3/4 cup vegetable shortening, cold and cut into pieces ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity:
                '3 cups all-purpose flour, plus more for rolling the dough',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '2 large eggs',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '5 tablespoons cold water ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '2 tablespoons sugar, plus more for sprinkling',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '1 tablespoon white vinegar ',
            name: 'name',
            type: 'type',
          ),
          IngredientModel2(
            quantity: '1 teaspoon kosher salt ',
            name: 'name',
            type: 'type',
          ),
        ],
        directions: [
          'For the sweet pie crust: In a large bowl using a pastry cutter, gradually work the butter and shortening into the flour until it resembles coarse meal, for 3 or 4 minutes. In a small bowl, beat one of the eggs with a fork and pour it into the flour mixture. Add the cold water, sugar, white vinegar and salt. Stir gently to combine.',
          'Form the dough into 2 evenly sized balls and place each ball into a gallon resealable plastic bag. Using a rolling pin, slightly flatten each ball of dough (to about 1/2 inch thick) to make rolling easier later. Seal the bags and place them in the freezer until you need them. (If you will be using them immediately, it\'s still a good idea to put them in the freezer for 15 to 20 minutes to chill.)',
          'For the filling: Combine the cherries and sugar in a medium saucepan over medium heat and cook until the juices release and are hot and bubbling, about 5 minutes. Stir in the balsamic vinegar and cook for 1 minute. Stir together the cornstarch and lemon juice in a small bowl until combined and add to the cherry mixture. Continue to cook until glossy and thickened, 2 to 3 minutes. Remove from the heat and let cool completely. Cover and refrigerate until ready to use.',
          'When you are ready to make the crust, remove the dough from the freezer and let thaw for 15 minutes. Preheat the oven to 375 degrees F.',
          'On a floured surface, roll out one piece of dough starting at the center and working your way out. (Sprinkle some flour over top of the dough if it\'s a bit too moist.) If the dough is sticking to the countertop, use a metal spatula and carefully scrape it up and flip it over, then continue rolling until it\'s about 1/2 inch larger in diameter than your pie pan.',
          'With a spatula, lift the dough into the pie pan. Gently press the dough against the edges of the pan. Go around the pie pan pinching and tucking the dough to make a clean edge. Fill with the cooled cherry mixture.',
          'Roll out the second dough the same size and place it over the pie. Trim off the edges and crimp the top and bottom crusts together to seal them. Cut a few vent holes in the top. Beat the remaining egg in a small bowl for the egg wash. Brush the top with the egg wash and sprinkle with sugar',
          'Put the pie onto a rimmed baking sheet lined with foil and bake until the filling is bubbling and the crust is browned, about 50 minutes. If the crust is getting too brown before the pie is finished, cover with foil and continue baking.',
          'Serve with vanilla ice cream.',
        ],
        tags: [],
        isTrend: false,
        image: 'assets/images/recipes/cherry pie.jpeg',
      ),
    ],
    description:
        'Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]',
    isTrend: false,
    image: 'assets/images/seafood.jpeg',
  ),
];

import 'package:flutter/material.dart';


void main() {
  runApp(new MaterialApp(
    title: 'IBA Cocktail List',
    home: new FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  final List<String> items = drinks;
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('IBA Cocktail List'),
      ),
      body: new ListView.builder(
        // Let the ListView know how many items it needs to build
        itemCount: items.length,
        // Provide a builder function. This is where the magic happens! We'll
        // convert each item into a Widget based on the type of item it is.
        itemBuilder: (context, index) {
          final item = items[index];
          return new ListTile(
            title: new Text(item.toString()),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new SecondScreen(item.toString())),
              );
            },
          );
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final List<String> descriptions = drinkIngredients;
  final List<String> instructions = drinkInstructions;
  final List<String> drinkList = drinks;
  String drinkName;

  SecondScreen(String drinkName) {
    this.drinkName = drinkName;
  }

  String getDrinkName() {
    return drinkName;
  }

  int getDrinkValue(drinkName) {
    return drinkList.indexOf(drinkName);
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(getDrinkName()),
      ),
      body: new Center(
        child: new Column(
//          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            new Image.asset('assets/'+ drinkName +'.jpg',
            fit: BoxFit.cover),
            new Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: new Text(
                'Ingredients',
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,

                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: new Text(
                descriptions[getDrinkValue(drinkName)],softWrap: true,
                style: new TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: new Text(
                instructions[getDrinkValue(drinkName)], softWrap: true,
                style: new TextStyle(
                    fontSize: 20.0,
                ),
              ),
            ),
            new Container(
              child: new RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
              child: new Text('Back to List'),
              ),
            ),
          ],
        )
      )
    );
  }
}

const List<String> drinkIngredients = const [
  '30ml Cognac\n30ml Créme de Cacao\n30ml Fresh Cream\n1 sprinkle nutmeg',
  '30ml Campari\n30ml Vermouth\nSplash Soda Water',
  '30ml Calvados\n30ml Gin\n30ml Apricot Brandy',
  '45ml Gin\n15ml Maraschino Liqueur\n15ml Lemon Juice\n1tsp Crème de Violette (optional)',
  '20ml Grand Marnier\n20ml Baileys Irish Cream\n20ml Kahlúa',
  '45ml Bacardi White Rum\n20ml Lime Juice\n10ml Grenadine',
  '45ml Gold Rum\n15ml Galliano\n60ml Pineapple Juice\n60ml Prosecco\n1 dash Lime Juice',
  '100ml Prosecco\n50ml fresh Peach Puree',
  '30ml Cognac\n30ml White Rum\n30ml Triple Sec\n20ml Lemon Juice',
  '50ml Vodka\n20ml Coffee Liqueur',
  '45ml Vodka\n90ml Tomato Juice\n15ml Lemon Juice\n2 dashes of Worcestershire Sauce\n1 dash Tabasco\n1 pinch Celery Salt\n1 pinch Pepper',
  '40ml Gin\n10ml Sugar Syrup\n15ml Lemon Juice\n15ml Blackberry Liqueur',
  '50ml Cachaça\n4 fresh Lime wedges\n2 teaspoons sugar',
  '40ml Old Tom Gin\n10ml Maraschino Liqueur\n10ml Orange Bitters\n10ml Lemon Juice',
  '90ml chilled Champagne\n10ml Cognac\n2 dashes Angostura Bitters\n1 sugar cube\n1 maraschino cherry',
  '45ml Gin\n15ml Raspberry Syrup\n15ml Lemon Juice\nFew drops Egg White',
  '40ml Lemon Vodka (substitute normal Vodka)\n15ml Cointreau\n30ml Cranberry Juice\n15ml Lime Juice',
  '50ml White Rum\n120ml Cola\n10ml Lime Juice',
  '45ml White rum\n15ml Simple syrup\n25ml Fresh lime juice',
  '60ml Dark Rum\n100ml Ginger Beer',
  '60ml Gin\n2 drops Peach Bitters\n2 fresh Mint Leaves',
  '60ml Vodka\n10ml Dry Vermouth\n10ml Olive Juice',
  '60ml Gin\n10ml Dry Vermouth',
  '50ml Vodka\n10ml Kahlúa\n25ml Strong Espresso\nSugar Syrup to taste',
  '30ml Gin\n15ml Lemon Juice\n2 dashes Sugar Syrup\n60ml Champagne',
  '35ml Cognac\n35ml Amaretto',
  '45ml Vodka\n15ml Raspberry Liqueur\n15ml Pineapple Juice',
  '45ml Gin\n10ml Sugar syrup\n30ml Lemon Juice\n80ml Soda Water',
  '35ml Scotch\n35ml Amaretto',
  '35ml Vodka\n35ml Amaretto',
  '20ml Galliano\n20ml Triple Sec\n20ml fresh Orange Juice\n10ml fresh Cream',
  '30ml Crème de Cacao\n30ml Crème de Menthe\n30ml fresh Cream',
  '45ml Vodka\n90ml Orange Juice\n15ml Galliano',
  '60ml White Rum\n15ml Maraschino Liqueur\n40ml Grapefruit Juice\n15ml Lime Juice',
  '40ml Brandy\n120ml Ginger Ale\n1 dash of Angostura bitters',
  '40ml Irish Whiskey\n90ml Hot Coffee\n30ml Fresh Cream\n1 teaspoon brown sugar',
  '45ml Gin\n15ml Sugar syrup\n30ml Lemon Juice\n60ml Soda Water\n1 dash Angostura bitters',
  '30ml Vodka\n30ml Triple Sec\n30ml Lime Juice',
  '90ml Dry White Wine\n10ml Crème de Cassis',
  '25ml Lemon Vodka\n20ml Triple Sec\n15ml Lemon Juice',
  '15ml Gin\n15ml Tequila\n15ml Vodka\n15ml White Rum\n15ml Triple Sec\n30ml Sugar Syrup\n25ml Lemon Juice\nTop with Cola',
  '40ml White Rum\n20ml Dark Rum\n15ml Orange Curaćao\n15ml Orgeat Syrup\n10ml Lime Juice',
  '50ml Rye Whiskey\n20ml Red Vermouth\n1 dash Angostura bitters',
  '35ml Tequila\n20ml Cointreau\n15ml Lime Juice',
  '60ml White Rum\n10ml Maraschino Liqueur\n10ml Grenadine Syrup\n60ml fresh Pineapple Juice',
  '75ml Champagne\n75ml fresh Orange Juice',
  '60ml Bourbon Whiskey\n4 fresh mint sprigs\n1 teaspoon powdered sugar\n2 teaspoons water',
  '40ml White Cuban Rum\n30ml Lime Juice\n6 Mint Sprigs\n2 teaspoons white sugar\nTop with Soda Water',
  '50ml Gin\n30ml Orange juice\n2 drops Absinthe\n2 drops Grenadine',
  '45ml Vodka\n120ml Ginger beer\n5ml Lime juice\n1 lime slice',
  '30ml Gin\n30ml Campari\n30ml Sweet Red Vermouth',
  '45ml Bourbon or Rye whiskey\n2 dashes Angostura bitters\n1 sugar cube\nFew dashes plain water',
  '35ml Gin\n20ml Apricot Brandy\n15ml Orange Juice',
  '30ml White Rum\n90ml Pineapple juice\n30ml Coconut cream',
  '45ml Pisco\n20ml Sugar Syrup\n30ml Lemon Juice\n1 small Egg White\n1 dash Angostura bitters',
  '45ml Dark rum\n35ml Orange Juice\n35ml fresh Pineapple Juice\n20ml Lemon Juice\n10ml Grenadine\n10ml Sugar syrup\n3 dashes Angostura bitters',
  '15ml Brandy\n45ml Red Port\n10ml Egg Yolk',
  '45ml Gin\n30ml Sugar Syrup\n15ml Lime Juice\n15ml Lemon Juice\n60ml Cream\n1 Egg White\n3 dashes Orange Flower Water\n2 drops Vanilla Extract\nTop with Soda Water',
  '20ml Kirsch\n40ml Dry Vermouth\n3 dashes Strawberry Syrup',
  '25ml Vodka\n15ml Créme de Cassis\n10ml Sugar Syrup\n25ml Lemon Juice\n75ml Champagne or Prosecco',
  '45ml Scotch whisky\n25ml Drambuie',
  '50ml Cognac (substitute Rye Whiskey)\n10ml Absinthe\n1 sugar cube\n2 dashes Peychaud’s bitters',
  '40ml Vodka\n120ml Cranberry juice\n30ml Grapefruit Juice\n1 lime wedge',
  '40ml Vodka\n20ml Peach schnapps\n40ml Cranberry Juice\n40ml Orange Juice',
  '50ml Vodka\n100ml Orange Juice',
  '50ml Cognac\n20ml Triple Sec\n20ml Lemon Juice',
  '30ml Gin\n15ml Cherry liqueur\n7.5ml Cointreau\n7.5ml DOM Bénédictine\n10ml Grenadine\n120ml Pineapple juice\n15ml Lime juice\n1 dash Angostura bitters',
  '60ml Prosecco\n40ml Aperol\nSplash soda water',
  '50ml Cognac\n20ml white Crème de Menthe',
  '45ml Tequila\n90ml Orange juice\n15ml Grenadine',
  '45ml Tequila\n15ml Lime Juice\n10ml Agave Nectar',
  '30ml Old Tom Gin\n30ml Dry Vermouth\n1/2 tsp Maraschino\n1/4 tsp Absinthe\n3 dashes Orange Bitters',
  '50ml Tequila\n70ml Tomato Juice\n30ml Orange Juice\n10ml Lime Juice\n1 teaspoon clear Honey\n1 half slice finely chopped Onion\n3 slices red hot chilli peppers\n3 drops Worcestershire sauce\nSalt to taste',
  '60ml Gin\n15ml Vodka\n7.5ml Lillet Blanc',
  '45ml Bourbon Whiskey\n15ml Sugar Syrup\n30ml fresh Lemon Juice\nDash Egg White (traditional but optional)',
  '40ml Gin\n30ml Triple Sec\n20ml fresh Lemon Juice',
  '30ml White Rum\n15ml Galliano\n15ml Triple Sec\n15ml Lime Juice',
  '',
];

const List<String> drinkInstructions = const [
  'Shake and strain into a chilled cocktail glass.\nSprinkle with fresh ground nutmeg.',
  'Mix the ingredients directly in a rocks glass filled with ice cubes.\nAdd a splash of soda water and garnish with half an orange slice.',
  'Pour all ingredients into a shaker with ice.\nShake and strain into a cocktail glass.',
  'Shake and strain into a chilled cocktail glass.',
  'Layer the ingredients one at a time starting with Kahlúa, followed by the Baileys and then Grand Marnier.\nSet the Grand Marnier alight, and serve while the flame is still on with a straw. Drink quickly.',
  'Pour all of the ingredients into a shaker with ice cubes.\nShake well and strain into a chilled cocktail glass.',
  'Combine the ingredients in the glass, stir gently and serve.',
  'Pour the peach puree into a chilled glass and add sparkling wine before stirring gently.',
  'Pour all of the ingredients into a shaker with ice cubes.\nShake, and strain into a chilled cocktail glass.',
  'Pour the ingredients into a rocks glass filled with ice cubes before stirring gently.\nTo make a White Russian, float 20ml fresh Cream on the top and stir gently.',
  'Stir gently and pour all of the ingredients into a highball glass rimmed with celery salt.\nGarnish with the end of a celery stick.',
  'Build the gin, syrup and lemon juice over crushed ice in a rocks glass.\nStir, then pour the blackberry liqueur over the top of the drink in a circular fashion.\nGarnish with a lemon slice, and two blackberries.',
  'Place the lime and sugar into a rocks glass and muddle.\nFill the glass with ice and Cachaça.\nFor a Caipiroska, use Vodka instead of Cachaça.',
  'Pour all of the ingredients into shaker with ice cubes and shake well.\nStrain into a chilled cocktail glass and garnish with a lemon twist and a maraschino cherry.',
  'Soak the sugar cube in bitters and gently place it in a champagne flute.\nAdd the cognac and gently pour the champagne. Garnish with a maraschino cherry.',
  'Pour all of the ingredients into a cocktail shaker filled with ice.\nShake well and strain into a cocktail glass.',
  'Shake the ingredients over ice and strain into a cocktail glass.\nGarnish with a slice of lime.',
  'Build all of the ingredients in a highball glass filled with ice.\nGarnish with a lime wedge.',
  'Shake and strain into a cocktail glass.',
  'Pour straight into a highball glass filled with ice.\nGarnish with a lime wedge.',
  'Pour all of the ingredients into a mixing glass with ice.\nStir and strain into a cocktail glass. Garnish with fresh mint leaves.',
  'Pour all of the ingredients into a mixing glass with ice cubes and stir well.\nStrain into a chilled cocktail glass and garnish with a green olive.',
  'Pour all of the ingredients into a mixing glass with ice cubes.\nStir well. Strain into a chilled cocktail glass. Garnish with an olive.',
  'Shake and strain into a chilled cocktail glass.',
  'Pour the Gin, Lemon Juice and Syrup into a shaker and shake.\nStrain into a Champagne flute, and top with Champagne. Stir gently.',
  'Pour all of the ingredients directly into a rocks glass filled with ice cubes.\nStir gently.',
  'Pour all of the ingredients into a shaker with ice.\nShake and strain into a chilled cocktail glass.',
  'Shake the gin, syrup and lemon juice with ice. Pour into a glass, and top with soda water.\nGarnish with a lemon slice.',
  'Pour all of the ingredients directly into a rocks glass filled with ice cubes.\nStir gently.',
  'Pour all of the ingredients directly into a rocks glass filled with ice cubes.\nStir gently.',
  'Pour all of the ingredients into a shaker filled with ice.\nShake briskly for few seconds.\nStrain into a chilled cocktail glass.',
  'Pour all of the ingredients into a shaker filled with ice.\nShake briskly for few seconds.\nStrain into a chilled cocktail glass.',
  'Pour the vodka and orange juice into a highball glass filled with ice.\nStir gently and float the Galliano on top.\nGarnish with orange slices and a cherry.',
  'Pour all of the ingredients into a shaker with ice and shake.\nStrain into a cocktail glass.',
  'Pour the brandy and ginger ale directly into a highball glass filled with ice.\nStir gently, and add a dash of bitters.\nGarnish with a lemon spiral.',
  'Warm the Irish whiskey over a flame.\nPour the whiskey into the glass with the coffee, and add the sugar. Float the cream on top.',
  'Pour all of the ingredients directly into a highball glass filled with ice. Stir gently.\nGarnish with a lemon slice and a maraschino cherry. Add a dash of Angostura bitters.\n(Note: for a Tom Collins, use Old Tom Gin)',
  'Shake and strain into a chilled cocktail glass.',
  'Pour the Crème de Cassis into a glass and top up with white wine.\nFor a Kir Royal: Use champagne instead of white wine.',
  'Shake and strain into a chilled cocktail glass rimmed with sugar, and garnish with a slice of lemon.',
  'Pour the ingredients into a highball glass filled with ice. Add the cola and stir gently. Garnish with lemon and a straw.',
  'Shake and strain into a highball glass.\nGarnish with a pineapple spear, mint leaves, lime peel and a straw.',
  'Pour all of the ingredients into a mixing glass with ice cubes.\nStir well and strain into a chilled cocktail glass. Garnish with a maraschino cherry.',
  'Pour all of the ingredients into a shaker with ice.\nShake well and strain into a cocktail glass rimmed with salt.',
  'Shake and strain into a chilled cocktail glass.',
  'Pour the orange juice into a Champagne flute and add the Champagne.\nStir gently.',
  'Gently muddle the mint, sugar and water in a highball glass.\nFill the glass with cracked ice, add the Bourbon and stir well until water starts to condense on the glass.\nGarnish with a mint spring.',
  'Muddle the mint springs with sugar and lime juice.\nAdd the rum and fill the glass with crushed ice.\nTop with soda water.\nGarnish with a spring of mint leaves and a lemon slice. Serve with a straw.',
  'Shake and strain into a chilled cocktail glass.',
  'Mix the ingredients in a glass with crushed ice.\nGarnish with a lime slice.',
  'Pour all of the ingredients directly into a rocks glass filled with ice.\nStir gently and garnish with a half orange slice.',
  'Place a sugar cube in a rocks glass and saturate it with bitters.\nAdd a dash of plain water, and muddle until dissolved.\nFill the glass with ice cubes and add the whiskey.\nGarnish with an orange slice and a cocktail cherry.',
  'Pour all of the ingredients into a cocktail shaker filled with ice.\nShake and strain into a chilled cocktail glass.',
  'Blend all of the ingredients with ice in an electric blender, pour into a large wide glass.\nGarnish with a slice of pineapple and a cocktail cherry. Serve with a straw.',
  'Shake and strain into a chilled glass.\nDash some Angostura bitters on top.',
  'Pour all of the ingredients except the bitters into a shaker filled with ice and shake.\nPour into a large glass filled with ice. Dash the bitters on top.\nGarnish with a cocktail cherry and a pineapple spear.',
  'Pour all of the ingredients into a cocktail shaker filled with ice and shake well.\nStrain into a cocktail glass and sprinkle with ground nutmeg.',
  'Pour all of the ingredients except the soda in a mixing glass, shake with no ice for two minutes, and then add ice and shake hard for another minute.\nStrain into a highball glass without ice and top with soda.',
  'Stir all of the ingredients with ice and strain into a cocktail glass.',
  'Shake all of the ingredients and pour into highball glass filled with ice. Top with Champagne or prosecco.\nGarnish with a lemon slice and a blackberry.',
  'Pour all of the ingredients directly into a rocks glass filled with ice.\nStir gently and garnish with a lemon twist.',
  'Rinse a chilled rocks glass with the absinthe, add crushed ice and set it aside.\nIn a mixing glass, add the sugar cube and saturate it with the bitters. Add the cognac and stir with ice.\nDiscard the ice and absinthe from the rocks glass, and strain the drink into the glass.\nGarnish with a lemon peel.',
  'Build all of the ingredients in a rocks glass filled with ice.\nGarnish with a lime wedge.',
  'Build all of the ingredients into a highball glass filled with ice.\nGarnish with an orange slice.',
  'Pour all of the ingredients into a highball glass filled with ice.\nStir gently and garnish with an orange slice.',
  'Pour all of the ingredients into a cocktail shaker filled with ice.\nShake well and strain into a cocktail glass rimmed with sugar.',
  'Pour all of the ingredients into cocktail shaker filled with ice cubes.\nShake well and strain into a highball glass.\nGarnish with a pineapple slice and a cocktail cherry.',
  'Build into a rocks  glass filled with ice.\nTop with a splash of soda water.\nGarnish with half orange slice.',
  'Pour all of the ingredients into a mixing glass with ice.\nStir and strain into a cocktail glass.',
  'Pour the tequila and the orange juice directly into a highball glass with ice cubes.\nAdd a splash of grenadine to create a chromatic effect (sunrise), and do not stir.\nGarnish with an orange slice and a cherry.',
  'Shake and strain into a chilled cocktail glass.',
  'Stir all of the ingredients with ice and strain into a cocktail glass.\nGarnish with a cocktail cherry and a lemon twist.',
  'Shake ingredients over ice and strain into a highball glass. Garnish with a chilli pepper.',
  'Shake and strain into a chilled cocktail glass.\nGarnish with a lemon twist.',
  'Pour all of the ingredients into a cocktail shaker filled with ice.\nShake well and strain into a rocks glass with ice.\nGarnish with a half orange slice and a maraschino cherry.',
  'Add all of the ingredients into a cocktail shaker filled with ice.\nShake well and strain into a cocktail glass.',
  'Shake and strain into a chilled cocktail glass.',

];

//Lists 77 IBA official cocktails
const List<String> drinks = const [
  'Alexander',
  'Americano',
  'Angel Face',
  'Aviation',
  'B52',
  'Bacardi',
  'Barracuda',
  'Bellini',
  'Between the Sheets',
  'Black Russian',
  'Bloody Mary',
  'Bramble',
  'Caipirinha',
  'Casino',
  'Champagne Cocktail',
  'Clover Club',
  'Cosmopolitan',
  'Cuba Libre',
  'Daiquiri',
  'Dark \'n\' Stormy',
  'Derby',
  'Dirty Martini',
  'Dry Martini',
  'Espresso Martini',
  'French 75',
  'French Connection',
  'French Martini',
  'Gin Fizz',
  'Godfather',
  'Godmother',
  'Golden Dream',
  'Grasshopper',
  'Harvey Wallbanger',
  'Hemingway Special',
  'Horse\'s Neck',
  'Irish Coffee',
  'John Collins',
  'Kamikaze',
  'Kir',
  'Lemon Drop',
  'Long Island Iced Tea',
  'Mai-Tai',
  'Manhattan',
  'Margarita',
  'Mary Pickford',
  'Mimosa',
  'Mint Julep',
  'Mojito',
  'Monkey Gland',
  'Moscow Mule',
  'Negroni',
  'Old Fashioned',
  'Paradise',
  'Pina Colada',
  'Pisco Sour',
  'Planter\'s Punch',
  'Porto Flip',
  'Ramos Gin Fizz',
  'Rose',
  'Russian Spring Punch',
  'Rusty Nail',
  'Sazerac',
  'Sea Breeze',
  'Sex On The Beach',
  'Screwdriver',
  'Sidecar',
  'Singapore Sling',
  'Spritz Veneziano',
  'Stinger',
  'Tequila Sunrise',
  'Tommy\'s Margarita',
  'Tuxedo',
  'Vampiro',
  'Vesper',
  'Whiskey Sour',
  'White Lady',
  'Yellow Bird',
];
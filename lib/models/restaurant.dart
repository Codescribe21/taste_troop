import 'package:flutter/material.dart';
import 'package:taste_troop/models/food.dart';

class Restaurant extends ChangeNotifier {
  // List of food menu
  final List<Food> _menu = [
    // Burgers
    Food(
        name: "Paneer Tikka Burger",
        description:
            "A juicy paneer patty with melted cheddar, tomato, and a hint of onion and pickle.",
        imagePath: "assets/burger/B1.jpg",
        price: 120.0,
        category: FoodCategory.Burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 20.0),
          Addon(name: "Extra patty", price: 30.0),
          Addon(name: "Extra sauce", price: 10.0),
        ]),

    Food(
        name: "Aloo Tikki Burger",
        description:
            "Crispy potato patty with lettuce, tomatoes, onions, and a tangy tamarind sauce.",
        imagePath: "assets/burger/B2.jpg",
        price: 100.0,
        category: FoodCategory.Burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 20.0),
          Addon(name: "Extra sauce", price: 10.0),
        ]),

    Food(
        name: "Chicken Tikka Burger",
        description:
            "Tender chicken tikka pieces with lettuce, onions, and mint mayo in a soft bun.",
        imagePath: "assets/burger/B3.jpg",
        price: 140.0,
        category: FoodCategory.Burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 20.0),
          Addon(name: "Extra sauce", price: 10.0),
        ]),

    Food(
        name: "Veggie Delight Burger",
        description:
            "Mixed vegetable patty with lettuce, tomato, and a special house sauce.",
        imagePath: "assets/burger/B4.jpg",
        price: 110.0,
        category: FoodCategory.Burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 20.0),
          Addon(name: "Extra sauce", price: 10.0),
        ]),

    Food(
        name: "Spicy Paneer Burger",
        description:
            "Spicy paneer patty with crunchy lettuce, tomato, and spicy mayo.",
        imagePath: "assets/burger/B5.jpg",
        price: 120.0,
        category: FoodCategory.Burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 20.0),
          Addon(name: "Extra sauce", price: 10.0),
        ]),

    // Salads
    Food(
      name: "Chaat Salad",
      description:
          "A tangy mix of chickpeas, potatoes, tomatoes, onions, and crunchy sev topped with tamarind and mint chutneys.",
      imagePath: "assets/Salad/S1.jpg",
      price: 80.0,
      category: FoodCategory.Salad,
      availableAddons: [],
    ),

    Food(
      name: "Paneer Tikka Salad",
      description:
          "Grilled paneer cubes on a bed of fresh lettuce, cucumber, tomatoes, and onions, drizzled with mint yogurt dressing.",
      imagePath: "assets/Salad/S2.jpg",
      price: 90.0,
      category: FoodCategory.Salad,
      availableAddons: [],
    ),

    Food(
      name: "Fruit Chaat",
      description:
          "Assorted seasonal fruits tossed with spices, lemon juice, and chaat masala.",
      imagePath: "assets/Salad/S3.jpg",
      price: 70.0,
      category: FoodCategory.Salad,
      availableAddons: [],
    ),

    Food(
      name: "Green Salad",
      description:
          "A refreshing mix of lettuce, cucumber, bell peppers, and olives, served with a zesty vinaigrette.",
      imagePath: "assets/Salad/S4.jpg",
      price: 60.0,
      category: FoodCategory.Salad,
      availableAddons: [],
    ),

    Food(
      name: "Sprouts Salad",
      description:
          "Nutritious sprouts mixed with chopped onions, tomatoes, and green chilies, garnished with coriander leaves.",
      imagePath: "assets/Salad/S5.jpeg",
      price: 70.0,
      category: FoodCategory.Salad,
      availableAddons: [],
    ),

    // Sides
    // Food(
    //   name: "Samosa",
    //   description: "Crispy pastry filled with spiced potatoes and peas, served with tangy tamarind chutney.",
    //   imagePath: "assets/sides/samosa.png",
    //   price: 40.0,
    //   category: FoodCategory.Sides, availableAddons: [],
    // ),

    // Food(
    //   name: "Onion Pakora",
    //   description: "Sliced onions dipped in chickpea batter and deep-fried until golden brown, served with mint chutney.",
    //   imagePath: "assets/sides/onion_pakora.png",
    //   price: 50.0,
    //   category: FoodCategory.Sides, availableAddons: [],
    // ),

    // Food(
    //   name: "Masala Papad",
    //   description: "Crispy papad topped with chopped onions, tomatoes, coriander, and a sprinkle of chaat masala.",
    //   imagePath: "assets/sides/masala_papad.png",
    //   price: 30.0,
    //   category: FoodCategory.Sides, availableAddons: [],
    // ),

    // Food(
    //   name: "Bhel Puri",
    //   description: "A delightful mix of puffed rice, sev, peanuts, onions, tomatoes, and tangy chutneys.",
    //   imagePath: "assets/sides/bhel_puri.png",
    //   price: 50.0,
    //   category: FoodCategory.Sides, availableAddons: [],
    // ),

    // Food(
    //   name: "Chilli Paneer",
    //   description: "Cubes of paneer tossed with bell peppers, onions, and spices, served with a tangy sauce.",
    //   imagePath: "assets/sides/chilli_paneer.png",
    //   price: 90.0,
    //   category: FoodCategory.Sides, availableAddons: [],
    // ),

    // Desserts
    Food(
      name: "Gulab Jamun",
      description:
          "Soft and spongy milk solids dipped in sugar syrup, served warm.",
      imagePath: "assets/dessert/D1.png",
      price: 60.0,
      category: FoodCategory.Deserts,
      availableAddons: [],
    ),

    Food(
      name: "Rasgulla",
      description:
          "Soft and spongy cottage cheese balls soaked in flavored sugar syrup.",
      imagePath: "assets/dessert/D2.png",
      price: 70.0,
      category: FoodCategory.Deserts,
      availableAddons: [],
    ),

    Food(
      name: "Kulfi",
      description:
          "Rich and creamy Indian ice cream flavored with saffron, cardamom, and pistachios.",
      imagePath: "assets/dessert/D3.jpg",
      price: 80.0,
      category: FoodCategory.Deserts,
      availableAddons: [],
    ),

    Food(
      name: "Rasmalai",
      description:
          "Delicate cottage cheese patties soaked in sweetened, thickened milk, garnished with almonds and pistachios.",
      imagePath: "assets/dessert/D4.png",
      price: 90.0,
      category: FoodCategory.Deserts,
      availableAddons: [],
    ),

    Food(
      name: "Jalebi",
      description:
          "Crispy and syrupy spirals made from deep-fried batter, perfect for a sweet indulgence.",
      imagePath: "assets/dessert/D5.png",
      price: 50.0,
      category: FoodCategory.Deserts,
      availableAddons: [],
    ),

    // Drinks
    Food(
        name: "Mango Lassi",
        description:
            "Refreshing yogurt-based drink blended with ripe mango pulp and a hint of cardamom.",
        imagePath: "assets/Drinks/D1.png",
        price: 50.0,
        category: FoodCategory.Drinks,
        availableAddons: [
          Addon(name: "Extra mango pulp", price: 10.0),
          Addon(name: "Cardamom sprinkle", price: 5.0),
        ]),

    Food(
      name: "Masala Chai",
      description:
          "Aromatic Indian tea brewed with spices like cardamom, cloves, and ginger, served with milk and sugar.",
      imagePath: "assets/Drinks/D2.png",
      price: 30.0,
      category: FoodCategory.Drinks,
      availableAddons: [],
    ),

    Food(
      name: "Fresh Lime Soda",
      description:
          "Refreshing blend of lime juice, soda water, sugar, and a pinch of salt, served over ice.",
      imagePath: "assets/Drinks/D3.png",
      price: 40.0,
      category: FoodCategory.Drinks,
      availableAddons: [],
    ),

    Food(
      name: "Thandai",
      description:
          "Traditional Indian cold drink made with a blend of almonds, fennel seeds, rose petals, and milk, garnished with saffron.",
      imagePath: "assets/Drinks/D4.png",
      price: 60.0,
      category: FoodCategory.Drinks,
      availableAddons: [],
    ),

    Food(
      name: "Mango Shake",
      description:
          "Creamy mango shake made with ripe mangoes, milk, and a scoop of ice cream.",
      imagePath: "assets/Drinks/D5.png",
      price: 50.0,
      category: FoodCategory.Drinks,
      availableAddons: [],
    ),
  ];

  //GETTERS

  List<Food> get menu => _menu;

  //OPERATIONS

// add to the cart

//remove from the cart

//get total price of cart

//get total number of items in cart

//clear the cart

  //HELPERS

//generate a receipt

//format double value in money

// format list of addons into a string summary
}

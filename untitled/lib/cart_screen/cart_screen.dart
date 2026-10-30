import 'package:flutter/material.dart';


import '../custom_app_button.dart';
import '../details_screen/details_screen.dart';
import 'cart_item.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final List<String> cartImages = [
    "assets/images/apple.png",
    "assets/images/banana.png",
    "assets/images/avocado.png",
    "assets/images/salmon.png",
  ];
  final List<String> cartNames = [
    "Red Apple",
    "Original Banana",
    "Avocado Bowl",
    "Salmon",
  ];
  final List<num> cartPrices = [4.99, 5.99, 24, 50];
  final List<String> cartUnits = ["kg", "kg", "st", "kg"];
  final List<String> cartDescriptions = [
    "Fresh, crisp, and naturally sweet apples delivered to your door in the most hygienic way. Perfect for a healthy snack, fresh juice, or delicious desserts.",
    "Fresh, naturally sweet bananas delivered to your home with the highest level of hygiene. Perfect for eating plain, making smoothies, or adding to cakes and desserts.",
    "Fresh, creamy, and nutrient-rich avocados delivered straight to your home. Perfect for salads, sandwiches, smoothies, or enjoying plain.",
    "Fresh, high-quality salmon delivered to your home in the most hygienic way. Perfect for healthy meals, grilling, baking, or delicious salads.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Cart",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Color(0xffFF5E00),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartImages.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          image: cartImages[index],
                          name: cartNames[index],
                          price: cartPrices[index],
                          unit: cartUnits[index],
                          description: cartDescriptions[index],
                        ),
                      ),
                    );
                  },
                  child: Dismissible(
                    direction: DismissDirection.endToStart,
                    background: Container(
                      color: Color(0xffA42B32),
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(
                        Icons.delete_forever,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    key: UniqueKey(),
                    child: Column(
                      children: [
                        CartItem(
                          image: cartImages[index],
                          name: cartNames[index],
                          price: cartPrices[index],
                          unit: cartUnits[index],
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          CustomAppButton(text: "Check Out"),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

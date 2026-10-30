import 'package:flutter/material.dart';

import '../details_screen/details_screen.dart' show DetailsScreen;
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  final List<String> categoryImages = [
    "assets/images/grapes.png",
    "assets/images/pumpkin.png",
    "assets/images/meat.png",
    "assets/images/fish.png",
    "assets/images/shrimp.png",
    "assets/images/juice.png",
    "assets/images/milk.png",
    "assets/images/iceCream.png",
    "assets/images/cake.png",
    "assets/images/handWash.png",
  ];
  final List<String> categoryTexts = [
    "Fruits",
    "Vegetables",
    "Meat",
    "Fish",
    "Sea food",
    "Juice",
    "Egg & Milk",
    "Ice cream",
    "Cake",
    "Hand wash",
  ];
  final List<int> categoryColors = [
    0xffEDD0FF,
    0xffFFD9BA,
    0xffFACCCC,
    0xffFBC1BD,
    0xffFFE299,
    0xffD3E5C4,
    0xffDAF2FC,
    0xffFFDEF6,
    0xffFECA97,
    0xffD6FAE9,
  ];
  final List<String> categoryDescriptions = [
    "Fresh and delicious fruits delivered to your home in the most hygienic way ever... Perfect for eating fresh, making juices, or adding to your favorite desserts.",
    "Fresh and healthy vegetables delivered to your home in the most hygienic way ever... Perfect for salads, cooking, or preparing delicious and nutritious meals.",
    "Fresh, high-quality meat delivered to your home in the most hygienic way ever... Perfect for grilling, cooking, or preparing delicious homemade meals",
    "Fresh and delicious fish delivered to your home in the most hygienic way ever... Perfect for grilling, baking, or creating healthy and tasty meals.",
    "Fresh and tasty seafood delivered to your home in the most hygienic way ever... Perfect for grilling, frying, or preparing delicious seafood dishes.",
    "Fresh and refreshing juices delivered to your home in the most hygienic way ever... Perfect for cooling down, enjoying with meals, or simply treating yourself to something delicious.",
    "Fresh and high-quality eggs and milk delivered to your home in the most hygienic way ever... Perfect for breakfast, cooking, baking, or enjoying fresh every day.",
    "Delicious and creamy ice cream delivered to your home in the most hygienic way ever... Perfect for cooling down, enjoying as a sweet treat, or sharing with family and friends.",
    "Fresh and delicious cakes delivered to your home in the most hygienic way ever... Perfect for celebrations, special occasions, or simply enjoying a sweet treat.",
    "Gentle and refreshing hand wash delivered to your home in the most hygienic way ever... Perfect for keeping your hands clean, fresh, and feeling great throughout the day.",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Categories",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xffFF5E00),
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Color(0xffAC8E71)),
                filled: true,
                fillColor: Color(0xffF3F3F3),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffF3F3F3)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffFF5E00)),
                ),
                hintText: "Search",
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffAC8E71),
                ),
              ),
            ),
          ),
        ),
        body: GridView.builder(
          itemCount: categoryImages.length,
          padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      image: categoryImages[index],
                      name: categoryTexts[index],
                      description: categoryDescriptions[index],
                    ),
                  ),
                );
              },
              child: CategoryItem(
                image: categoryImages[index],
                text: categoryTexts[index],
                color: categoryColors[index],
              ),
            );
          },
        ),
      ),
    );
  }
}

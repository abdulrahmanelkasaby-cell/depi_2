import 'package:flutter/material.dart';

import '../categories_screen/category_item.dart';
import '../details_screen/deal_item.dart';
import '../details_screen/details_screen.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> categoryImages = [
    "assets/images/grapes.png",
    "assets/images/pumpkin.png",
    "assets/images/meat.png",
    "assets/images/fish.png",
    "assets/images/shrimp.png",
    "assets/images/juice.png",
  ];
  final List<String> categoryTexts = [
    "Fruits",
    "Vegetables",
    "Meat",
    "Fish",
    "Sea food",
    "Juice",
  ];
  final List<int> categoryColors = [
    0xffEDD0FF,
    0xffFFD9BA,
    0xffFACCCC,
    0xffFBC1BD,
    0xffFFE299,
    0xffD3E5C4,
  ];

  final List<String> categoryDescriptions = [
    "Fresh and delicious fruits delivered to your home in the most hygienic way ever... Perfect for eating fresh, making juices, or adding to your favorite desserts.",
    "Fresh and healthy vegetables delivered to your home in the most hygienic way ever... Perfect for salads, cooking, or preparing delicious and nutritious meals.",
    "Fresh, high-quality meat delivered to your home in the most hygienic way ever... Perfect for grilling, cooking, or preparing delicious homemade meals",
    "Fresh and delicious fish delivered to your home in the most hygienic way ever... Perfect for grilling, baking, or creating healthy and tasty meals.",
    "Fresh and tasty seafood delivered to your home in the most hygienic way ever... Perfect for grilling, frying, or preparing delicious seafood dishes.",
    "Fresh and refreshing juices delivered to your home in the most hygienic way ever... Perfect for cooling down, enjoying with meals, or simply treating yourself to something delicious.",
  ];

  final List<String> dealImages = [
    "assets/images/apple.png",
    "assets/images/banana.png",
    "assets/images/avocado.png",
    "assets/images/salmon.png",
  ];
  final List<String> dealNames = [
    "Red Apple",
    "Original Banana",
    "Avocado Bowl",
    "Salmon",
  ];
  final List<String> dealWeights = [
    "1 kg,price",
    "1 kg,price",
    "1 pcs,price",
    "1 kg,price",
  ];
  final List<num> dealPrices = [4.99, 5.99, 24, 50];

  final List<String> dealUnits = ["kg", "kg", "st", "kg"];

  final List<String> dealDescriptions = [
    "Fresh, crisp, and naturally sweet apples delivered to your door in the most hygienic way. Perfect for a healthy snack, fresh juice, or delicious desserts.",
    "Fresh, naturally sweet bananas delivered to your home with the highest level of hygiene. Perfect for eating plain, making smoothies, or adding to cakes and desserts.",
    "Fresh, creamy, and nutrient-rich avocados delivered straight to your home. Perfect for salads, sandwiches, smoothies, or enjoying plain.",
    "Fresh, high-quality salmon delivered to your home in the most hygienic way. Perfect for healthy meals, grilling, baking, or delicious salads.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            SizedBox(height: 30),
            Image.asset("assets/images/home.png"),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: Color(0xff6D3805),
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xffFF5E00),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 152,
              child: ListView.builder(
                itemCount: categoryImages.length,
                scrollDirection: Axis.horizontal,
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
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Deals",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: Color(0xff6D3805),
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xffFF5E00),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: dealImages.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            image: dealImages[index],
                            name: dealNames[index],
                            price: dealPrices[index],
                            unit: dealUnits[index],
                            description: dealDescriptions[index],
                          ),
                        ),
                      );
                    },
                    child: DealItem(
                      image: dealImages[index],
                      name: dealNames[index],
                      weight: dealWeights[index],
                      price: dealPrices[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../cart_screen/cart_screen.dart';
import '../categories_screen/categories_screen.dart';
import '../home/home_screen.dart';
import '../order_screen/order_screen.dart';
import '../profile_screen/profile_screen.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int current = 0;
  List<Widget> screens = [
    HomeScreen(),
    CategoriesScreen(),
    CartScreen(),
    OrdersScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: List.filled(
            1,
            BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 10),
          ),

          color: Colors.white,
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              current = value;
            });
          },
          currentIndex: current,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: "Orders",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
          selectedItemColor: Color(0xffFF5E00),
          unselectedItemColor: Color(0xff6D3805),
          showUnselectedLabels: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedFontSize: 16,
          selectedIconTheme: IconThemeData(size: 30),
        ),
      ),
      body: screens[current],
    );
  }
}

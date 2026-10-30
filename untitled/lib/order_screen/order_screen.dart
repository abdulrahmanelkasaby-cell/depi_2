import 'package:flutter/material.dart';


import '../models/product_model.dart';
import '../widget/favorites_manager.dart';
import 'order_item.dart';

class OrdersScreen extends StatelessWidget {
  OrdersScreen({super.key});

  final List<int> orders = [345, 345, 347];
  final List<String> states = ["Delivered", "Cancelled", "Delivered"];
  final List<TextStyle> styles = [
    TextStyle(
      color: Color(0xff5EC401),
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    TextStyle(
      color: Color(0xffF2110D),
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    TextStyle(
      color: Color(0xff5EC401),
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  ];
  final List<String> dates = [
    "October 26, 2014",
    "October 14, 2016",
    "July 26, 2017",
  ];
  final List<int> prices = [700, 452, 281];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Orders",
            style: TextStyle(
              color: Color(0xffFF5E00),
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: "Ongoing"),
              Tab(text: "History"),
              Tab(text: "Favorite"),
            ],
            dividerHeight: .5,
            indicator: UnderlineTabIndicator(
              insets: EdgeInsetsGeometry.symmetric(horizontal: 90),
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              borderSide: BorderSide(width: 3, color: Color(0xffFF5E00)),
            ),
            labelStyle: TextStyle(
              color: Color(0xffFF5E00),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            unselectedLabelStyle: TextStyle(
              color: Color(0xff6D3805),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // Ongoing
            Center(
              child: Text(
                "No orders ongoing",
                style: TextStyle(color: Color(0xff6D3805), fontSize: 25),
              ),
            ),

            // History
            ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    OrderItem(
                      order: orders[index],
                      state: states[index],
                      style: styles[index],
                      date: dates[index],
                      price: prices[index],
                    ),
                    Divider(),
                  ],
                );
              },
            ),

            // Favorite
            ValueListenableBuilder<List<Product>>(
              valueListenable: FavoritesManager.instance.favorites,
              builder: (context, favList, _) {
                if (favList.isEmpty) {
                  return Center(
                    child: Text(
                      "",
                      style: TextStyle(color: Color(0xff6D3805), fontSize: 20),
                    ),
                  );
                }
                return ListView.builder(
                  itemCount: favList.length,
                  itemBuilder: (context, index) {
                    final item = favList[index];
                    return Dismissible(
                      key: ValueKey(item.name),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        FavoritesManager.instance.removeFavorite(item);
                      },
                      background: Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        color: Colors.red,
                        child: const Icon(Icons.delete, color: Colors.white),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Image.asset(
                              item.image,
                              width: 45,
                              height: 45,
                            ),
                            title: Text(
                              item.name,
                              style: TextStyle(
                                color: Color(0xff6D3805),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            trailing: item.price != null
                                ? Text(
                                    "\$${item.price}",
                                    style: TextStyle(
                                      color: Color(0xffFF5E00),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                : null,
                          ),
                          Divider(),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';


import '../custom_app_button.dart';
import '../models/product_model.dart';
import '../widget/favorites_manager.dart';
import 'counter_attck.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    super.key,
    required this.image,
    required this.name,
    this.price,
    this.unit,
    required this.description,
  });

  final String image;
  final String name;
  final num? price;
  final String? unit;
  final String description;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late Product product;

  @override
  void initState() {
    super.initState();
    product = Product(
      image: widget.image,
      name: widget.name,
      price: widget.price,
      unit: widget.unit,
      description: widget.description,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.asset(widget.image, height: 200),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color(0xff6D3805),
                        ),
                      ),
                    ],
                  ),
                  if (widget.price != null) SizedBox(height: 10),
                  if (widget.price != null)
                    Row(
                      children: [
                        Text(
                          "\$${widget.price} ",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: Color(0xff6D3805),
                          ),
                        ),
                        Text(
                          "/${widget.unit}",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff6D3805),
                          ),
                        ),
                      ],
                    ),
                  SizedBox(height: 30),
                  Text(
                    widget.description,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff6D3805),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigCounter(),
                ValueListenableBuilder<List<Product>>(
                  valueListenable: FavoritesManager.instance.favorites,
                  builder: (context, favList, _) {
                    final isFav = FavoritesManager.instance.isFavorite(product);
                    return IconButton(
                      icon: Icon(
                        size: 30,
                        isFav ? Icons.favorite : Icons.favorite_border,
                        color: isFav ? Colors.red : Colors.orange,
                      ),
                      onPressed: () {
                        FavoritesManager.instance.toggleFavorite(product);
                      },
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 50),
            CustomAppButton(text: "Add To Cart"),
          ],
        ),
      ),
    );
  }
}

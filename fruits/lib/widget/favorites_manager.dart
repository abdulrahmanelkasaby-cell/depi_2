import 'package:flutter/cupertino.dart';

import '../models/product_model.dart';

class FavoritesManager {
  FavoritesManager._internal();

  static final FavoritesManager instance = FavoritesManager._internal();

  final ValueNotifier<List<Product>> favorites = ValueNotifier([]);

  bool isFavorite(Product product) {
    return favorites.value.any((p) => p.name == product.name);
  }

  void toggleFavorite(Product product) {
    final current = List<Product>.from(favorites.value);
    if (isFavorite(product)) {
      current.removeWhere((p) => p.name == product.name);
    } else {
      current.add(product);
    }
    favorites.value = current;
  }

  void removeFavorite(Product product) {
    final current = List<Product>.from(favorites.value);
    current.removeWhere((p) => p.name == product.name);
    favorites.value = current;
  }
}

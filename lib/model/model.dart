import 'dart:ui';

class Product {
  final String title;
  final String currentPrice;
  final String oldPrice;
  final String? discount;
  final String imageAsset;

  Product({
    required this.title,
    required this.currentPrice,
    required this.oldPrice,
    this.discount,
    required this.imageAsset,
  });
}

class Merchant {
  final String name;
  final bool isActive;
  final String assetLogo;

  Merchant({required this.name, required this.isActive, required this.assetLogo});
}

import 'package:credpal_assessment/gen/assets.gen.dart';
import 'package:credpal_assessment/model/model.dart';
import 'package:flutter/material.dart';

class HomeVm extends ChangeNotifier {
  List<Product> _products = [];
  List<Merchant> _merchants = [];

  List<Product> get products => _products;
  List<Merchant> get merchants => _merchants;

  HomeVm() {
    _loadMockData();
  }

  void _loadMockData() {
    _products = [
      Product(
        title: "Nokia G20",
        currentPrice: "₦39,780",
        oldPrice: "₦88,000",
        discount: "Pay 40%",
        productImage: Assets.images.phoneOne.path,
        imageAsset: "",
      ),
      Product(
        title: "iPhone XS Max 4GB...",
        currentPrice: "₦295,999",
        oldPrice: "₦315,000",

        productImage: Assets.images.phoneTwo.path,
        imageAsset: Assets.svgs.ogaBassey,
      ),
      Product(
        title: "Anker Soundcore...",
        currentPrice: "₦39,780",
        oldPrice: "₦88,000",
        productImage: Assets.images.productThree.path,
        imageAsset: Assets.svgs.merchantOne,
      ),
      Product(
        title: "iPhone 12 Pro",
        currentPrice: "₦490,500",
        oldPrice: "₦515,000",
        productImage: Assets.images.phoneOne.path,
        imageAsset: Assets.svgs.dreamworks,
      ),
      Product(
        title: "Anker Soundcore...",
        currentPrice: "₦39,780",
        oldPrice: "₦88,000",
        discount: "Pay 40%",
        productImage: Assets.images.productThree.path,
        imageAsset: Assets.svgs.ogaBassey,
      ),
      Product(
        title: "iPhone 12 Pro",
        currentPrice: "₦490,500",
        oldPrice: "₦515,000",
        productImage: Assets.images.phoneOne.path,
        imageAsset: Assets.svgs.merchantOne,
      ),
    ];

    _merchants = [
      Merchant(name: "Justrite", isActive: true, assetLogo: Assets.svgs.merchantTwo),
      Merchant(name: "Orile Restaurant", isActive: true, assetLogo: Assets.svgs.merchantTwo),
      Merchant(name: "Slot", isActive: true, assetLogo: Assets.svgs.slot),
      Merchant(name: "Pointek", isActive: true, assetLogo: Assets.svgs.merchantTwo),
      Merchant(name: "ogabassey", isActive: true, assetLogo: Assets.svgs.ogaBassey),
      Merchant(name: "Casper Stores", isActive: false, assetLogo: Assets.svgs.slot),
      Merchant(name: "Dreamworks", isActive: false, assetLogo: Assets.svgs.dreamworks),
      Merchant(name: "Hubmart", isActive: true, assetLogo: Assets.svgs.hub),
      Merchant(name: "Just Used", isActive: true, assetLogo: Assets.svgs.merchantOne),
      Merchant(name: "Just Fones", isActive: true, assetLogo: Assets.svgs.slot),
    ];

    notifyListeners();
  }
}

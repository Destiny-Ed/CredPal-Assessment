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
        imageAsset: Assets.pngs.phoneOne.path,
      ),
      Product(
        title: "iPhone XS Max 4GB...",
        currentPrice: "₦295,999",
        oldPrice: "₦315,000",
        imageAsset: Assets.pngs.phoneTwo.path,
      ),
      Product(
        title: "Anker Soundcore...",
        currentPrice: "₦39,780",
        oldPrice: "₦88,000",
        imageAsset: Assets.pngs.productThree.path,
      ),
      Product(
        title: "iPhone 12 Pro",
        currentPrice: "₦490,500",
        oldPrice: "₦515,000",
        imageAsset: Assets.pngs.phoneOne.path,
      ),
      Product(
        title: "Anker Soundcore...",
        currentPrice: "₦39,780",
        oldPrice: "₦88,000",
        imageAsset: Assets.pngs.productThree.path,
      ),
      Product(
        title: "iPhone 12 Pro",
        currentPrice: "₦490,500",
        oldPrice: "₦515,000",
        imageAsset: Assets.pngs.phoneOne.path,
      ),
    ];

    _merchants = [
      Merchant(name: "Justrite", isActive: true, assetLogo: Assets.svgs.merchantOne),
      Merchant(name: "Oriile", isActive: true, assetLogo: Assets.svgs.merchantTwo),
      Merchant(name: "Slot", isActive: true, assetLogo: Assets.svgs.merchantTwo),
      Merchant(name: "Pointek", isActive: true, assetLogo: Assets.svgs.merchantTwo),
      Merchant(name: "ogabassey", isActive: true, assetLogo: Assets.svgs.merchantTwo),
      Merchant(name: "Casper", isActive: false, assetLogo: Assets.svgs.merchantTwo),
      Merchant(name: "Dreamworks", isActive: true, assetLogo: Assets.svgs.merchantTwo),
      Merchant(name: "Hubmart", isActive: true, assetLogo: Assets.svgs.merchantTwo),
      Merchant(name: "Just Used", isActive: true, assetLogo: Assets.svgs.merchantTwo),
      Merchant(name: "Just Fones", isActive: true, assetLogo: Assets.svgs.merchantTwo),
      Merchant(name: "Justrite", isActive: true, assetLogo: Assets.svgs.merchantTwo),
    ];

    notifyListeners();
  }
}

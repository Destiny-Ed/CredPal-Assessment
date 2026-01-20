import 'package:credpal_assessment/gen/assets.gen.dart';
import 'package:credpal_assessment/theme/colors.dart';
import 'package:credpal_assessment/view_model/home_vm.dart';
import 'package:credpal_assessment/widgets/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: AppColors.headerColor),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Consumer<HomeVm>(
                builder: (context, provider, child) {
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildHeader(context),
                        const SizedBox(height: 16),
                        _buildSearchBar(),
                        const SizedBox(height: 5),
                        _buildProductsSection(context, provider),
                        const SizedBox(height: 32),
                        _buildMerchantsSection(context, provider),
                        const SizedBox(height: 40),
                      ],
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

  Widget _buildHeader(BuildContext context) {
    return Container(
      color: AppColors.headerColor,

      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pay later",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: AppColors.blackColor),
                  ),
                  Row(
                    children: [
                      Text(
                        "everywhere",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: AppColors.blackColor,
                        ),
                      ),
                      const SizedBox(width: 8),
                      SvgPicture.asset(Assets.svgs.warning),
                    ],
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Shopping limit: ₦0",
                    style: TextStyle(color: AppColors.blackColor, fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: activate credit logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blueColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                    ),
                    child: Text(
                      "Activate Credit",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: AppColors.bgWhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        spacing: 10,
        children: [
          Expanded(
            child: Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(color: AppColors.cardColor, borderRadius: BorderRadius.circular(30)),
              child: Row(
                spacing: 10,
                children: [
                  SizedBox(height: 18, width: 18, child: SvgPicture.asset(Assets.svgs.searchNormal)),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search for products or stores",
                        hintStyle: TextStyle(color: AppColors.grayColor),
                        filled: true,
                        fillColor: AppColors.cardColor,
                        contentPadding: const EdgeInsets.symmetric(vertical: 4),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: AppColors.cardColor, borderRadius: BorderRadius.circular(10)),
            child: SizedBox(height: 18, width: 18, child: SvgPicture.asset(Assets.svgs.scan)),
          ),
        ],
      ),
    );
  }

  Widget _buildProductsSection(BuildContext context, HomeVm provider) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Recommended for you",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.blackColor),
          ),
        ),

        Container(
          padding: const EdgeInsets.all(10),
          color: AppColors.cardColor,
          height: 414,
          child: GridView.builder(
            itemCount: provider.products.length,
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              final product = provider.products[index];
              return ProductCard(product: product);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildMerchantsSection(BuildContext context, HomeVm provider) {
    return Column(
      spacing: 24,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Featured Merchants",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: AppColors.blackColor),
              ),
              Text(
                "View all",
                style: TextStyle(color: AppColors.blueColor, fontWeight: FontWeight.w400, fontSize: 12),
              ),
            ],
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.78,
          ),
          itemCount: provider.merchants.length,
          itemBuilder: (context, index) {
            final merchant = provider.merchants[index];
            return MerchantCircle(merchant: merchant);
          },
        ),
      ],
    );
  }
}

import 'package:credpal_assessment/model/model.dart';
import 'package:credpal_assessment/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final hasDiscount = product.discount != null && product.discount!.isNotEmpty;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: AppColors.bgWhiteColor,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          height: 174,
          width: 161,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 96,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: 96,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(product.productImage)),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 10,
                      child: Card(
                        color: AppColors.bgWhiteColor,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          radius: 28,
                          backgroundColor: AppColors.bgWhiteColor,
                          child: !hasDiscount
                              ? SvgPicture.asset(product.imageAsset, fit: BoxFit.cover)
                              : Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Pay",
                                        style: TextStyle(
                                          color: AppColors.grayColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        "40%",
                                        style: TextStyle(
                                          color: AppColors.blueColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                        color: AppColors.blackColor,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      spacing: 8,
                      children: [
                        Text(
                          product.currentPrice,
                          style: TextStyle(
                            color: AppColors.blueColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          product.oldPrice,
                          style: TextStyle(
                            color: AppColors.grayColor,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MerchantCircle extends StatelessWidget {
  final Merchant merchant;

  const MerchantCircle({super.key, required this.merchant});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Badge(
          offset: Offset(-8, -1),
          backgroundColor: Colors.transparent,
          isLabelVisible: merchant.isActive,
          label: CircleAvatar(
            radius: 11,
            backgroundColor: AppColors.bgWhiteColor,
            child: CircleAvatar(backgroundColor: Colors.green, radius: 8),
          ),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: ClipOval(child: SvgPicture.asset(merchant.assetLogo, fit: BoxFit.cover)),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          merchant.name,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            height: 1.1,
            fontWeight: FontWeight.w500,
            color: AppColors.blackColor,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

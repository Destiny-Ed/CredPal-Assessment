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
        elevation: 1.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: AppColors.bgWhiteColor,
        child: SizedBox(
          width: 165,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (hasDiscount)
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green.shade700,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    product.discount!,
                    style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
              Expanded(
                child: Center(
                  child: Image.asset(
                    product.imageAsset,
                    fit: BoxFit.contain,
                    errorBuilder: (_, __, ___) =>
                        const Icon(Icons.phone_android, size: 90, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      product.currentPrice,
                      style: TextStyle(color: AppColors.blueColor, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      product.oldPrice,
                      style: TextStyle(
                        color: AppColors.grayColor,
                        decoration: TextDecoration.lineThrough,
                        fontSize: 13,
                      ),
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

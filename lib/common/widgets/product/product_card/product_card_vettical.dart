import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/styles/shadows.dart';
import 'package:tstore/common/widgets/custom_shapes/container/t_rouded_container.dart';
import 'package:tstore/common/widgets/icon/t_icon.dart';
import 'package:tstore/common/widgets/images/t_tounded_imaged.dart';
import 'package:tstore/common/widgets/product/text/t_product_price_text.dart';
import 'package:tstore/common/widgets/product/text/t_product_title_text.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_string.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_fn.dart';

class TProdictCardVertical extends StatelessWidget {
  const TProdictCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return InkWell(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageradius),
          //color: Colors.red
          color: dark ? TColors.darkergrey : TColors.white,
        ),
        child: Column(
          children: [
            //Todo ===================Thumbnail, Wishlist, DisTag =======================//,
            TRoudedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroudColor: dark ? TColors.dark : TColors.white,
              child: Stack(
                children: [
                  //? ThumnailImage
                  const TRoundedImage(
                      imageUrl: TImages.productImage1, applyImageRadius: true),

                  //? saleTag
                  Positioned(
                    top: 12,
                    child: TRoudedContainer(
                      radius: TSizes.sm,
                      backgroudColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25 %',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                  //? FavIcon
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCirculaIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBwItems / 2),
            //Todo: ===================== Clode ========= //

            //Todo: ====== Detail ========= //
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TProductTitleText(
                      title: 'Nike red t.shirt', smallSize: true),
                  const SizedBox(height: TSizes.spaceBwItems / 2),
                  Row(
                    children: [
                      Text("Nike",
                          style: Theme.of(context).textTheme.labelMedium,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis),
                      const SizedBox(width: TSizes.xs),
                      const Icon(Iconsax.verify5,
                          color: TColors.primary, size: TSizes.iconXs),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //? priceTag
                      const TProductPriceText(
                        price: '45.98',
                      ),
                      //? Add Button
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(TSizes.productImageradius),
                          ),
                        ),
                        child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

            //Todo =========== clode Detail =================//
          ],
        ),
      ),
    );
  }
}

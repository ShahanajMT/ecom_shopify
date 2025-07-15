// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/utils/constants/sizes.dart';

class TAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TAppbar({
    Key? key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnpressed,
  }) : super(key: key);

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnpressed; 

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsetsGeometry.symmetric(horizontal: TSizes.sm), child: AppBar(
      automaticallyImplyLeading: false,
      leading: showBackArrow ? IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left)) : leadingIcon != null ? IconButton(onPressed: leadingOnpressed, icon: Icon(leadingIcon)) : null,
      title: title,
      actions: actions,

    ),);
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

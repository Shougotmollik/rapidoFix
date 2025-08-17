import 'package:flutter/material.dart';
import 'package:rapidofix/constants/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.appBarTitle,
    this.showTabs = false,
  });

  final String appBarTitle;
  final bool showTabs;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appBarTitle,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: AppColors.purpleColor,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_outline_rounded),
        ),
      ],

      /// ✅ TabBar appears only if showTabs == true
      bottom: showTabs
          ? PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Material(
                color: Colors.white, // ✅ TabBar background color
                child: TabBar(
                  isScrollable: false,
                  indicatorColor: AppColors.purpleColor,
                  labelColor: AppColors.purpleColor,
                  unselectedLabelColor: Colors.black,
                  physics: const BouncingScrollPhysics(),
                  dividerColor: AppColors.purpleColor.withAlpha(40),
                  dividerHeight: 3,
                  tabs: const [
                    Tab(text: "Explore"),
                    Tab(text: "Trips"),
                    Tab(text: "Discussion"),
                    Tab(text: "Events"),
                    // Tab(text: "More"),
                  ],
                ),
              ),
            )
          : null,
    );
  }

  /// ✅ Adjust height dynamically depending on TabBar
  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (showTabs ? kTextTabBarHeight : 0));
}

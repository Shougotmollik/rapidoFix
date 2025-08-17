import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidofix/controller/shop_controller.dart';
import 'package:rapidofix/views/main_nav/shop/widgets/location_card_widget.dart';
import 'package:rapidofix/views/main_nav/shop/widgets/store_card_widget.dart';
import 'package:rapidofix/views/widgets/main_nav/custom_app_bar.dart';
import 'package:rapidofix/views/widgets/main_nav/heading_text_widget.dart';
import 'package:rapidofix/views/widgets/main_nav/product_card_widget.dart';

import 'widgets/shop_category_card_widgets.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ShopController controller = Get.find<ShopController>();
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: 'Shop'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const LocationCardWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  HeadingTextWidget(
                    headingText: 'Categories',
                    onTap: () {},
                    buttonText: 'View all',
                  ),
                  _buildCategorySection(size, controller),
                  HeadingTextWidget(
                    headingText: 'Deals of the day',
                    onTap: () {},
                    buttonText: 'View all',
                  ),
                  _buildDealsOfDaySection(size, controller),
                  HeadingTextWidget(
                    headingText: 'Nearby Store',
                    onTap: () {},
                    buttonText: 'View all',
                  ),
                  _buildStoreSection(controller),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategorySection(Size size, ShopController controller) {
    return SizedBox(
      height: size.height * 0.12,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            ShopCategoryCardWidget(categories: controller.categories[index]),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: controller.categories.length,
      ),
    );
  }

  Widget _buildDealsOfDaySection(Size size, ShopController controller) {
    return SizedBox(
      height: size.height * 0.25,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            ProductCardWidget(dealsModel: controller.deals[index]),
        separatorBuilder: (context, index) => SizedBox(width: 12),
        itemCount: 3,
      ),
    );
  }

  Widget _buildStoreSection(ShopController controller) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        childAspectRatio: 1.1,
      ),
      itemCount: 4,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) =>
          StoreCardWidget(store: controller.stores[index]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidofix/constants/app_colors.dart';
import 'package:rapidofix/controller/care_controller.dart';
import 'package:rapidofix/controller/home_controller.dart';
import 'package:rapidofix/views/widgets/main_nav/care_card_widget.dart';
import 'package:rapidofix/views/widgets/main_nav/custom_app_bar.dart';
import 'package:rapidofix/views/widgets/main_nav/heading_text_widget.dart';
import 'package:rapidofix/views/widgets/main_nav/service_card_widget.dart';

class CareScreen extends StatelessWidget {
  const CareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final CareController careController = Get.find<CareController>();
    final HomeController homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: 'Care'),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: HeadingTextWidget(
                  headingText: 'Bike Name',
                  onTap: () {},
                  buttonText: 'Change',
                ),
              ),
              Divider(thickness: 3, color: AppColors.purpleColor.withAlpha(20)),
              HeadingTextWidget(
                headingText: 'Care Recommendations',
                onTap: () {},
                buttonText: 'View all',
              ),
              _buildCareRecommendationSection(size, careController),
              HeadingTextWidget(
                headingText: 'Buy Service Packages',
                onTap: () {},
                buttonText: 'View all',
              ),
              _buildServicePackageSection(homeController),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServicePackageSection(HomeController homeController) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) =>
          ServiceCardWidget(serviceModel: homeController.services[index]),
    );
  }

  Widget _buildCareRecommendationSection(
    Size size,
    CareController careController,
  ) {
    return SizedBox(
      height: size.height / 7,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            CareCardWidget(careModel: careController.cares[index]),
        separatorBuilder: (context, index) => SizedBox(width: 12),
        itemCount: 4,
      ),
    );
  }
}

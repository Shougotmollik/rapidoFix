import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidofix/constants/app_colors.dart';
import 'package:rapidofix/controller/product_controller.dart';
import 'package:rapidofix/views/widgets/main_nav/custom_app_bar.dart';
import 'package:rapidofix/views/widgets/main_nav/heading_text_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController controller = Get.find<ProductController>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.purpleColor.withAlpha(30),
      drawer: const Drawer(),
      appBar: const CustomAppBar(appBarTitle: 'Product'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: Colors.white,
              child: HeadingTextWidget(
                headingText: 'Bike Name',
                onTap: () {},
                buttonText: 'Change',
              ),
            ),
            SizedBox(height: 4),
            Container(
              height: size.height * 0.25,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/images/bike.png',
                        height: 125,
                        fit: BoxFit.cover,
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.purpleColor,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        onPressed: () {},
                        label: const Text('Connect'),
                        icon: const Icon(Icons.send_to_mobile),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildBikeDetailsCard(
                          headingText: 'Distance',
                          resultText: '570 km',
                        ),
                        _buildBikeDetailsCard(
                          headingText: 'Top Speed',
                          resultText: '65 kmph',
                        ),
                        _buildBikeDetailsCard(
                          headingText: 'Rides',
                          resultText: '154',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            // Grid of categories
            GridView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 12,
              ),
              itemCount: controller.categories.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Image.asset(controller.categories[index].icon, height: 70),
                    const SizedBox(height: 4),
                    Text(
                      controller.categories[index].title,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBikeDetailsCard({
    required String headingText,
    required String resultText,
  }) {
    return Column(
      children: [
        Text(
          resultText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.purpleColor,
          ),
        ),
        Text(
          headingText,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}

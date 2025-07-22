import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidofix/controller/home_controller.dart';
import 'package:rapidofix/views/widgets/main_nav/custom_app_bar.dart';
import 'package:rapidofix/views/widgets/main_nav/event_card_widget.dart';
import 'package:rapidofix/views/widgets/main_nav/heading_text_widget.dart';
import 'package:rapidofix/views/widgets/main_nav/product_card_widget.dart';
import 'package:rapidofix/views/widgets/main_nav/service_card_widget.dart';
import 'package:rapidofix/views/widgets/main_nav/users_avatar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.find<HomeController>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(),
      appBar: CustomAppBar(appBarTitle: 'Home'),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              HeadingTextWidget(headingText: 'Nearby Users', onTap: () {}),
              _buildNearbyUserSection(size, homeController),
              HeadingTextWidget(headingText: 'Deals of the day', onTap: () {}),
              _buildDealsOfDaySection(size, homeController),
              HeadingTextWidget(headingText: 'Upcoming Events', onTap: () {}),
              _buildUpcomingEventSection(size, homeController),
              HeadingTextWidget(
                headingText: 'Buy Service Packages',
                onTap: () {},
              ),
              _buildServiceSection(size, homeController),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServiceSection(Size size, HomeController homeController) {
    return SizedBox(
      height: size.height * 0.22,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            ServiceCardWidget(serviceModel: homeController.services[index]),
        separatorBuilder: (context, index) => SizedBox(width: 8),
        itemCount: 3,
      ),
    );
  }

  Widget _buildUpcomingEventSection(Size size, HomeController homeController) {
    return SizedBox(
      height: size.height * 0.13,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            EventCardWidget(eventModel: homeController.events[index]),
        separatorBuilder: (context, index) => SizedBox(width: 8),
        itemCount: 3,
      ),
    );
  }

  Widget _buildDealsOfDaySection(Size size, HomeController homeController) {
    return SizedBox(
      height: size.height * 0.25,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            ProductCardWidget(dealsModel: homeController.deals[index]),
        separatorBuilder: (context, index) => SizedBox(width: 12),
        itemCount: 2,
      ),
    );
  }

  Widget _buildNearbyUserSection(Size size, HomeController homeController) {
    return SizedBox(
      height: size.height * 0.1,
      child: ListView.separated(
        itemBuilder: (context, index) =>
            UsersAvatarWidget(userAvatarModel: homeController.avatars[index]),
        separatorBuilder: (context, index) => SizedBox(width: 8),
        itemCount: 8,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

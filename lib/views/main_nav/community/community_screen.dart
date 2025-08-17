import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidofix/controller/community_controller.dart';
import 'package:rapidofix/views/main_nav/community/widgets/leader_board_section.dart';
import 'package:rapidofix/views/widgets/main_nav/custom_app_bar.dart';
import 'package:rapidofix/views/widgets/main_nav/event_card_widget.dart';
import 'package:rapidofix/views/widgets/main_nav/heading_text_widget.dart';
import 'package:rapidofix/views/widgets/main_nav/users_avatar_widget.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CommunityController controller = Get.find<CommunityController>();
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: CustomAppBar(appBarTitle: 'Community', showTabs: true),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TabBarView(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: _buildExploreSection(size, controller),
              ),
              const Center(child: Text("Trips coming soon ➡️⌛")),
              const Center(child: Text("Discussion coming soon ➡️⌛")),
              const Center(child: Text("Events coming soon ➡️⌛")),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExploreSection(Size size, CommunityController controller) {
    return Column(
      children: [
        HeadingTextWidget(
          headingText: 'Leaderboard',
          onTap: () {},
          buttonText: 'View all',
        ),
        LeaderboardSection(),
        HeadingTextWidget(
          headingText: 'Nearby Users',
          onTap: () {},
          buttonText: 'View all',
        ),
        _buildNearbyUserSection(size, controller),
        HeadingTextWidget(
          headingText: 'Upcoming Events',
          onTap: () {},
          buttonText: 'View all',
        ),
        _buildUpcomingEventSection(size, controller),
      ],
    );
  }

  Widget _buildNearbyUserSection(Size size, CommunityController controller) {
    return SizedBox(
      height: size.height * 0.1,
      child: ListView.separated(
        itemBuilder: (context, index) =>
            UsersAvatarWidget(userAvatarModel: controller.avatars[index]),
        separatorBuilder: (context, index) => SizedBox(width: 8),
        itemCount: 8,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _buildUpcomingEventSection(Size size, CommunityController controller) {
    return SizedBox(
      height: size.height * 0.13,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            EventCardWidget(eventModel: controller.events[index]),
        separatorBuilder: (context, index) => SizedBox(width: 8),
        itemCount: 3,
      ),
    );
  }
}

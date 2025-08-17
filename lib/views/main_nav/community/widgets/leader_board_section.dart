import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidofix/constants/app_colors.dart';
import 'package:rapidofix/controller/community_controller.dart';
import 'package:rapidofix/model/user_avatar_model.dart';

class LeaderboardSection extends StatelessWidget {
  LeaderboardSection({super.key});

  final CommunityController controller = Get.find<CommunityController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.purpleColor.withAlpha(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // MARK: - Top 3 Leaderboard Section
          Obx(
            () => controller.topUsers.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      height: size.height * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // User 2
                          _buildTopUserCard(controller.topUsers[1], context, 2),
                          // User 1  - Largest card
                          _buildTopUserCard(controller.topUsers[0], context, 1),
                          // User 3
                          _buildTopUserCard(controller.topUsers[2], context, 3),
                        ],
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  // Helper widget to build individual top user cards (1st, 2nd, 3rd)
  Widget _buildTopUserCard(
    UserAvatarModel user,
    BuildContext context,
    int rank,
  ) {
    final size = MediaQuery.of(context).size;
    bool isFirst = rank == 1;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (isFirst)
          Transform.translate(
            offset: const Offset(0, 2), // Adjust to lift the crown slightly
            child: const Icon(
              Icons.emoji_events,
              color: Colors.amber,
              size: 40,
            ),
          ),
        CircleAvatar(
          radius: isFirst ? 35 : 25, // Larger for 1st place
          backgroundImage: AssetImage('assets/images/avatar.png'),
          backgroundColor: Colors.grey[300],
        ),
        const SizedBox(height: 8),
        Container(
          width: isFirst ? 110 : 90, // Wider for 1st place
          height: isFirst
              ? size.height * 0.25
              : size.height * 0.15, // Taller for 1st place
          decoration: BoxDecoration(
            color: isFirst
                ? AppColors.purpleColor
                : AppColors.purpleColor.withAlpha(122),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$rank',
                style: TextStyle(
                  fontSize: isFirst ? 25 : 18,
                  fontWeight: FontWeight.w700,
                  color: isFirst ? Colors.white : Colors.grey.shade200,
                ),
              ),
              Text(
                user.name,
                style: TextStyle(
                  fontSize: isFirst ? 16 : 14,
                  fontWeight: FontWeight.w600,
                  color: isFirst ? Colors.white : Colors.grey.shade200,
                ),
              ),
              Text(
                '${user.points} PTS',
                style: TextStyle(
                  fontSize: isFirst ? 12 : 10,
                  color: isFirst ? Colors.white : Colors.grey.shade200,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

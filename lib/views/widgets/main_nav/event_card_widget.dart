import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidofix/constants/app_colors.dart';
import 'package:rapidofix/controller/home_controller.dart';
import 'package:rapidofix/model/event_model.dart';

class EventCardWidget extends StatelessWidget {
  final EventModel eventModel;

  const EventCardWidget({super.key, required this.eventModel});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    final HomeController homeController = Get.find<HomeController>();
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: size.height * 0.10,
              width: size.width * 0.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  image: AssetImage(eventModel.eventImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 8,
              bottom: -8,
              child: SizedBox(
                width: size.width * 0.4,
                height: size.height * 0.05,
                child: Stack(
                  children: [
                    // Show first 3 avatars
                    for (
                      int i = 0;
                      i < homeController.avatars.length && i < 3;
                      i++
                    )
                      Positioned(
                        left: i * 20.0,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: size.height * 0.015,
                            backgroundImage: AssetImage(
                              homeController.avatars[i].imagePath,
                            ),
                          ),
                        ),
                      ),

                    // Showing remaining avatar number
                    if (homeController.avatars.length - 3 > 0)
                      Positioned(
                        left: 3 * 20.0,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: size.height * 0.015,
                            backgroundColor: AppColors.purpleColor,
                            child: Text(
                              '+${homeController.avatars.length - 3}',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Text(
          eventModel.eventDestination,
          style: textTheme.titleMedium?.copyWith(
            fontSize: 14,
            color: AppColors.greyTextColor,
          ),
        ),
      ],
    );
  }
}

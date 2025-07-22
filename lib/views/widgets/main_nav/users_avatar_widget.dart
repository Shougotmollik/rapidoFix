import 'package:flutter/material.dart';
import 'package:rapidofix/model/user_avatar_model.dart';

class UsersAvatarWidget extends StatelessWidget {
  final UserAvatarModel userAvatarModel;

  const UsersAvatarWidget({super.key, required this.userAvatarModel});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Column(
      spacing: 8,
      children: [
        Container(
          height: size.height / 15,
          width: size.height / 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: AssetImage(userAvatarModel.imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          userAvatarModel.name,
          style: textTheme.labelLarge?.copyWith(
            color: Color(0xff666666),
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}

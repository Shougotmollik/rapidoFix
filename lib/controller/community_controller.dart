import 'package:get/get.dart';
import 'package:rapidofix/model/event_model.dart';
import 'package:rapidofix/model/user_avatar_model.dart';

class CommunityController extends GetxController {
  final topUsers = <UserAvatarModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchLeaderboardData();
  }

  void fetchLeaderboardData() {
    // Dummy data for demonstration purposes
    final allUsers = [
      UserAvatarModel(
        id: 1,
        name: 'Ankit',
        imagePath: 'https://placehold.co/100x100/A7A1B6/FFFFFF?text=A1',
        points: 600,
      ),
      UserAvatarModel(
        id: 2,
        name: 'Kavya',
        imagePath: 'https://placehold.co/100x100/775C5B/FFFFFF?text=K2',
        points: 420,
      ),
      UserAvatarModel(
        id: 3,
        name: 'Neelam',
        imagePath: 'https://placehold.co/100x100/987D7C/FFFFFF?text=N3',
        points: 360,
      ),
    ];

    List<UserAvatarModel> rankedUsers = [];
    for (int i = 0; i < allUsers.length; i++) {
      rankedUsers.add(
        UserAvatarModel(
          id: allUsers[i].id,
          name: allUsers[i].name,
          imagePath: allUsers[i].imagePath,
          points: allUsers[i].points,
          rank: i + 1,
        ),
      );
    }

    topUsers.assignAll(rankedUsers.take(3).toList());
  }

  // Nearby users
  final List<UserAvatarModel> avatars = [
    UserAvatarModel(name: 'Ankita', imagePath: 'assets/images/avatar.png'),
    UserAvatarModel(name: 'Pankaj', imagePath: 'assets/images/avatar2.png'),
    UserAvatarModel(name: 'Manish', imagePath: 'assets/images/avatar3.png'),
    UserAvatarModel(name: 'Ankur', imagePath: 'assets/images/avatar4.png'),
    UserAvatarModel(name: 'Ankita', imagePath: 'assets/images/avatar.png'),
    UserAvatarModel(name: 'Pankaj', imagePath: 'assets/images/avatar2.png'),
    UserAvatarModel(name: 'Manish', imagePath: 'assets/images/avatar3.png'),
    UserAvatarModel(name: 'Ankur', imagePath: 'assets/images/avatar4.png'),
  ];

  //  Events
  final List<EventModel> events = [
    EventModel(
      eventImage: 'assets/images/event1.png',
      eventDestination: 'Shimla to Manali',
    ),
    EventModel(
      eventImage: 'assets/images/event2.png',
      eventDestination: 'Goa to Gujarat',
    ),
    EventModel(
      eventImage: 'assets/images/event3.png',
      eventDestination: 'Delhi to kashmir',
    ),
    EventModel(
      eventImage: 'assets/images/event2.png',
      eventDestination: 'Kolkata to darjiling',
    ),
  ];
}

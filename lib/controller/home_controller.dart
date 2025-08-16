import 'package:get/get.dart';
import 'package:rapidofix/model/deals_model.dart';
import 'package:rapidofix/model/event_model.dart';
import 'package:rapidofix/model/service_model.dart';
import 'package:rapidofix/model/user_avatar_model.dart';

class HomeController extends GetxController {
  // user avatar data
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

  // Deal of the days data

  final List<DealsModel> deals = [
    DealsModel(
      title: 'Racing Dual Visor Helmet',
      imagePath: 'assets/images/helmet1.png',
      price: 4079,
      originalPrice: 5099,
      discountPercentage: 20,
      rating: 4.8,
      ratingCount: 212,
    ),
    DealsModel(
      title: 'Aerodynamic Helmet',
      imagePath: 'assets/images/helmet2.png',
      price: 2799,
      originalPrice: 3499,
      discountPercentage: 20,
      rating: 4.5,
      ratingCount: 154,
    ),
  ];

  // Event destination data
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

  //   Service package data
  final List<ServiceModel> services = [
    ServiceModel(
      title: 'Annual Maintenance',
      imagePath: 'assets/images/service1.png',
      price: 900,
      originalPrice: 1000,
      discountPercentage: 10,
    ),
    ServiceModel(
      title: 'Teflon Coating',
      imagePath: 'assets/images/service2.png',
      price: 1350,
      originalPrice: 1500,
      discountPercentage: 10,
    ),
    ServiceModel(
      title: 'Annual Maintenance',
      imagePath: 'assets/images/service3.png',
      price: 900,
      originalPrice: 1000,
      discountPercentage: 10,
    ),
    ServiceModel(
      title: 'Teflon Coating',
      imagePath: 'assets/images/service4.png',
      price: 1350,
      originalPrice: 1500,
      discountPercentage: 10,
    ),
    ServiceModel(
      title: 'Teflon Coating',
      imagePath: 'assets/images/service2.png',
      price: 1350,
      originalPrice: 1500,
      discountPercentage: 10,
    ),
    ServiceModel(
      title: 'Annual Maintenance',
      imagePath: 'assets/images/service3.png',
      price: 900,
      originalPrice: 1000,
      discountPercentage: 10,
    ),
    ServiceModel(
      title: 'Teflon Coating',
      imagePath: 'assets/images/service4.png',
      price: 1350,
      originalPrice: 1500,
      discountPercentage: 10,
    ),
  ];
}

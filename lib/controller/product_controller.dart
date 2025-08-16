import 'package:get/get.dart';
import 'package:rapidofix/model/category_model.dart';

class ProductController extends GetxController {
  final List<CategoryModel> categories = [
    CategoryModel(icon: 'assets/categories/mytour.png', title: 'My Tour'),
    CategoryModel(icon: 'assets/categories/ride.png', title: 'My Rides'),
    CategoryModel(icon: 'assets/categories/settings.png', title: 'Settings'),
    CategoryModel(
      icon: 'assets/categories/servicesettings.png',
      title: 'Service',
    ),
    CategoryModel(icon: 'assets/categories/docs.png', title: 'Digi Docs'),
    CategoryModel(icon: 'assets/categories/visit.png', title: 'Expert Visit'),
    CategoryModel(icon: 'assets/categories/location.png', title: 'P-location'),
    CategoryModel(
      icon: 'assets/categories/findlocation.png',
      title: 'Find Location',
    ),
    CategoryModel(
      icon: 'assets/categories/maintaince.png',
      title: 'Maintenance',
    ),
    CategoryModel(
      icon: 'assets/categories/troubleshoot.png',
      title: 'Troubleshoot',
    ),
    CategoryModel(icon: 'assets/categories/loyality.png', title: 'Loyalty'),
    CategoryModel(
      icon: 'assets/categories/vechicalinfo.png',
      title: 'Vehicle Info',
    ),
  ];
}

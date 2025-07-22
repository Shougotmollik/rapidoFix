import 'package:get/get.dart';
import 'package:rapidofix/model/care_model.dart';

class CareController extends GetxController {
  //  care recommendation data
  final List<CareModel> cares = [
    CareModel(imagePath: 'assets/images/care1.png', title: 'Spark Plug'),
    CareModel(imagePath: 'assets/images/care2.png', title: 'Clutch Shoe'),
    CareModel(imagePath: 'assets/images/care3.png', title: 'Hose Fuel'),
  ];
}

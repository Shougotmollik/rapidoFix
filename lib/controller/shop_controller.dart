import 'package:get/get.dart';
import 'package:rapidofix/model/deals_model.dart';
import 'package:rapidofix/model/shop_category_model.dart';
import 'package:rapidofix/model/store_model.dart';

class ShopController extends GetxController {
  final List<ShopCategoryModel> categories = [
    ShopCategoryModel(
      title: 'Helmets',
      imagePath: 'assets/shopcategory/helmets.png',
    ),
    ShopCategoryModel(
      title: 'Urban Wear',
      imagePath: 'assets/shopcategory/urbenwear.png',
    ),
    ShopCategoryModel(
      title: 'Riding Gear',
      imagePath: 'assets/shopcategory/gear.png',
    ),
    ShopCategoryModel(
      title: 'Accessories',
      imagePath: 'assets/shopcategory/accessories.png',
    ),
    ShopCategoryModel(
      title: 'Upgrades',
      imagePath: 'assets/shopcategory/upgrades.png',
    ),
  ];

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

  final List<StoreModel> stores = [
    StoreModel(
      title: 'Infinity Bike Accessories',
      imagePath: 'assets/store/shop1.png',
    ),
    StoreModel(title: 'New Range Trends', imagePath: 'assets/store/shop2.png'),
    StoreModel(
      title: 'mhichels motor store ',
      imagePath: 'assets/store/upgrades.png',
    ),
    StoreModel(
      title: 'atoms Bike Accessories',
      imagePath: 'assets/store/helmets.png',
    ),
  ];
}

class ServiceModel {
  final String title;
  final String imagePath;
  final double price;
  final double originalPrice;
  final double discountPercentage;

  ServiceModel({
    required this.title,
    required this.imagePath,
    required this.price,
    required this.originalPrice,
    required this.discountPercentage,
  });
}

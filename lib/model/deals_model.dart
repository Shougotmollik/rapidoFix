class DealsModel {
  final String title;
  final String imagePath;
  final double price;
  final double originalPrice;
  final double discountPercentage;
  final double rating;
  final int ratingCount;

  DealsModel({
    required this.title,
    required this.imagePath,
    required this.price,
    required this.originalPrice,
    required this.discountPercentage,
    required this.rating,
    required this.ratingCount,
  });
}

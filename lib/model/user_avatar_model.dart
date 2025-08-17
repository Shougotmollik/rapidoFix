class UserAvatarModel {
  final int? id;
  final String name;
  final String imagePath;
  final int? points;
  final int? rank;

  UserAvatarModel({
    required this.name,
    required this.imagePath,
    this.id,
    this.points,
    this.rank,
  });
}

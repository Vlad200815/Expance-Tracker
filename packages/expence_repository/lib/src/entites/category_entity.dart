import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  String categoryId;
  String name;
  double totalExpences;
  String icon;
  String color;

  CategoryEntity({
    required this.categoryId,
    required this.name,
    required this.color,
    required this.icon,
    required this.totalExpences,
  });

  Map<String, Object?> toDocument() {
    return {
      "category": categoryId,
      "name": name,
      "color": color,
      "icon": icon,
      "totalExpence": totalExpences,
    };
  }

  static CategoryEntity fromDocument(Map<String, dynamic> doc) {
    return CategoryEntity(
      categoryId: doc['categoryId'],
      name: doc['name'],
      color: doc['color'],
      icon: doc['icon'],
      totalExpences: doc['totalExpences'],
    );
  }

  @override
  List<Object?> get props => [
        name,
        categoryId,
        totalExpences,
        name,
        icon,
        color,
      ];
}

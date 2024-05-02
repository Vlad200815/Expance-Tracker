import 'package:equatable/equatable.dart';
import 'package:expence_repository/src/entites/category_entity.dart';

class Category extends Equatable {
  String categoryId;
  String name;
  double totalExpences;
  String icon;
  String color;

  Category({
    required this.categoryId,
    required this.name,
    required this.color,
    required this.icon,
    required this.totalExpences,
  });

  CategoryEntity toCategoryEntity() {
    return CategoryEntity(
      name: name,
      categoryId: categoryId,
      totalExpences: totalExpences,
      icon: icon,
      color: color,
    );
  }

  static Category fromEntity(CategoryEntity entity) {
    return Category(
      categoryId: entity.categoryId,
      name: entity.name,
      color: entity.color,
      icon: entity.icon,
      totalExpences: entity.totalExpences,
    );
  }

  static final empty = Category(
    categoryId: "",
    color: "",
    icon: "",
    name: "",
    totalExpences: 0,
  );

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

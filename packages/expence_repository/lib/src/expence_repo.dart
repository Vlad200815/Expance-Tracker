import 'package:expence_repository/expence_repository.dart';

abstract class ExpenceRepository {
  Future<void> createCategory(Category category);
  Future<List<Category>> getCategory(Category category);
}

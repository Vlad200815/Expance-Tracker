import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expence_repository/expence_repository.dart';

class FirebaseExpenceRepository implements ExpenceRepository {
  final categoryCollection =
      FirebaseFirestore.instance.collection("categories");
  final expenceCollection = FirebaseFirestore.instance.collection('expenses');

  @override
  Future<void> createCategory(Category category) async {
    try {
      await categoryCollection
          .doc(category.categoryId)
          .set(category.toCategoryEntity().toDocument());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<List<Category>> getCategory(Category category) async {
    try {
      return await categoryCollection.get().then((value) => value.docs
          .map(
            (e) => Category.fromEntity(
              CategoryEntity.fromDocument(
                e.data(),
              ),
            ),
          )
          .toList());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:review_system_kottakal_om/db/model/review_model.dart';

ValueNotifier<List<ReviewModel>> studentListNotifier = ValueNotifier([]);

Future<void> addreview(ReviewModel value) async {
  final reviewData = await Hive.openBox<ReviewModel>('data_db');
  await reviewData.add(value);
  studentListNotifier.value.add(value);
  // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
  studentListNotifier.notifyListeners();
}

Future<void> getAllReview() async {
  final reviewData = await Hive.openBox<ReviewModel>('data_db');
  studentListNotifier.value.clear();
  studentListNotifier.value.addAll(reviewData.values);
  // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
  studentListNotifier.notifyListeners();
}

Future<void> deleteReview(int index) async {
  final reviewData = await Hive.openBox<ReviewModel>('data_db');
  await reviewData.deleteAt(index);
  getAllReview();
}

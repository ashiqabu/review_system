import 'package:hive/hive.dart';
part 'review_model.g.dart';

@HiveType(typeId: 1)
class ReviewModel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  final String selectedSnack;

    @HiveField(2)
  final String selectedSnack1;

    @HiveField(3)
  final String selectedSnack2;

    @HiveField(4)
  final String description;



  ReviewModel({
    required this.selectedSnack,
    required this.selectedSnack1,
    required this.selectedSnack2,
    required this.description,
    this.id
  });
}






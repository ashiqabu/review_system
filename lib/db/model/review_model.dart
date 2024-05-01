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

  @HiveField(5)
  final String selectedTick;

  @HiveField(6)
  final String selectedClose;




  ReviewModel({
    required this.selectedSnack,
    required this.selectedSnack1,
    required this.selectedSnack2,
    required this.description,
    required this.selectedTick,
    required this.selectedClose,
    this.id,
  });
}



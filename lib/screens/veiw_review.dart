import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:review_system_kottakal_om/core/constant.dart';
import 'package:review_system_kottakal_om/db/functions/db_functions.dart';
import 'package:review_system_kottakal_om/db/model/review_model.dart';
import 'package:review_system_kottakal_om/screens/full_view_review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    getAllReview();
    return Scaffold(
      appBar: AppBar(
        title: ValueListenableBuilder(
          valueListenable: studentListNotifier,
          builder: (BuildContext context, List<ReviewModel> reviewList, child) {
            return Text('Total Reviews: ${reviewList.length}');
          },
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: studentListNotifier,
        builder: (BuildContext context, List<ReviewModel> reviewList, child) {
          if (reviewList.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    'animations/animation_lkknttjy.json',
                    width: 200,
                    height: 200,
                  ),
                  const Text(
                    'No reviews available',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            );
          } else {
            return ListView.separated(
              itemBuilder: ((context, index) {
                final data = reviewList[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      onLongPress: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Confirm Delete'),
                              content: const Text(
                                  'Do you want to delete this item?'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    deleteReview(index);
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Yes'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('No'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ReviewDetails(
                                  data: data,
                                )));
                      },
                      title: Text(data.selectedSnack),
                      subtitle: data.description.isNotEmpty
                          ? Text(data.description)
                          : Text('No vlaue from user'),
                      leading: Text((index + 1).toString()),
                      trailing: Text(data.selectedSnack),
                    ),
                  ),
                );
              }),
              itemCount: reviewList.length,
              separatorBuilder: (context, index) {
                return kHeight(1);
              },
            );
          }
        },
      ),
    );
  }
}

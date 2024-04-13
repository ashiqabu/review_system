import 'package:flutter/material.dart';
import 'package:review_system_kottakal_om/core/constant.dart';
import 'package:review_system_kottakal_om/db/functions/db_functions.dart';
import 'package:review_system_kottakal_om/db/model/review_model.dart';
import 'package:review_system_kottakal_om/screens/thankyou.dart';
import 'package:review_system_kottakal_om/screens/widgets/button.dart';
import 'package:review_system_kottakal_om/screens/widgets/widget.dart';

class AddReview extends StatefulWidget {
  const AddReview({super.key});

  @override
  State<AddReview> createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  String selectedSnack = 'None selected';
  String selectedSnack1 = 'None selected';
  String selectedSnack2 = 'None selected';
  final descriptonCntrl = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                kHeight(50),
                const Text(
                  'would you like our service',
                  style: TextStyle(fontSize: 19),
                ),
                Text('Selected item : $selectedSnack'),
                kHeight(10),
                SizedBox(
                  width: 250,
                  child: RadioMenuButton(
                    value: 'Excellent',
                    groupValue: selectedSnack,
                    onChanged: (selectedValue) {
                      setState(() {
                        selectedSnack = selectedValue!;
                      });
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        elevation: const MaterialStatePropertyAll(2),
                        backgroundColor:
                            const MaterialStatePropertyAll(buttonColor)),
                    child: Row(
                      children: [
                        kWidth(10),
                        SizedBox(
                            height: 50,
                            child: Image.asset('assets/exellent.jpg')),
                        kWidth(10),
                        const Text('Excellent'),
                      ],
                    ),
                  ),
                ),
                kHeight(20),
                SizedBox(
                  width: 250,
                  child: RadioMenuButton(
                    value: 'Good',
                    groupValue: selectedSnack,
                    onChanged: (selectedValue) {
                      setState(() {
                        selectedSnack = selectedValue!;
                      });
                    },
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      elevation: const MaterialStatePropertyAll(2),
                      backgroundColor:
                          const MaterialStatePropertyAll(buttonColor),
                    ),
                    child: Row(
                      children: [
                        kWidth(10),
                        SizedBox(
                            height: 50, child: Image.asset('assets/good.jpg')),
                        kWidth(10),
                        const Text(
                          'Good',
                        ),
                      ],
                    ),
                  ),
                ),
                kHeight(20),
                SizedBox(
                  width: 250,
                  child: RadioMenuButton(
                    value: 'Average',
                    groupValue: selectedSnack,
                    onChanged: (selectedValue) {
                      setState(() {
                        selectedSnack = selectedValue!;
                      });
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        elevation: const MaterialStatePropertyAll(2),
                        backgroundColor:
                            const MaterialStatePropertyAll(buttonColor)),
                    child: Row(
                      children: [
                        kWidth(10),
                        SizedBox(
                            height: 50,
                            child: Image.asset('assets/average.jpg')),
                        kWidth(10),
                        const Text(
                          'Average',
                        ),
                      ],
                    ),
                  ),
                ),
                kHeight(20),
                SizedBox(
                  width: 250,
                  child: RadioMenuButton(
                    value: 'Bad',
                    groupValue: selectedSnack,
                    onChanged: (selectedValue) {
                      setState(() {
                        selectedSnack = selectedValue!;
                      });
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        elevation: const MaterialStatePropertyAll(2),
                        backgroundColor:
                            const MaterialStatePropertyAll(buttonColor)),
                    child: Row(
                      children: [
                        kWidth(10),
                        SizedBox(
                            height: 50, child: Image.asset('assets/bad.jpg')),
                        kWidth(10),
                        const Text(
                          'Bad',
                        ),
                      ],
                    ),
                  ),
                ),
                kHeight(50),
                const Text(
                  'would you like our Treatment',
                  style: TextStyle(fontSize: 19),
                ),
                Text('Selected item : $selectedSnack1'),
                kHeight(10),
                SizedBox(
                  width: 250,
                  child: RadioMenuButton(
                    value: 'Excellent',
                    groupValue: selectedSnack1,
                    onChanged: (selectedValue) {
                      setState(() {
                        selectedSnack1 = selectedValue!;
                      });
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        elevation: const MaterialStatePropertyAll(2),
                        backgroundColor:
                            const MaterialStatePropertyAll(buttonColor)),
                    child: Row(
                      children: [
                        kWidth(10),
                        SizedBox(
                            height: 50,
                            child: Image.asset('assets/exellent.jpg')),
                        kWidth(10),
                        const Text('Excellent'),
                      ],
                    ),
                  ),
                ),
                kHeight(20),
                SizedBox(
                  width: 250,
                  child: RadioMenuButton(
                    value: 'Good',
                    groupValue: selectedSnack1,
                    onChanged: (selectedValue) {
                      setState(() {
                        selectedSnack1 = selectedValue!;
                      });
                    },
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      elevation: const MaterialStatePropertyAll(2),
                      backgroundColor:
                          const MaterialStatePropertyAll(buttonColor),
                    ),
                    child: Row(
                      children: [
                        kWidth(10),
                        SizedBox(
                            height: 50, child: Image.asset('assets/good.jpg')),
                        kWidth(10),
                        const Text(
                          'Good',
                        ),
                      ],
                    ),
                  ),
                ),
                kHeight(20),
                SizedBox(
                  width: 250,
                  child: RadioMenuButton(
                    value: 'Average',
                    groupValue: selectedSnack1,
                    onChanged: (selectedValue) {
                      setState(() {
                        selectedSnack1 = selectedValue!;
                      });
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        elevation: const MaterialStatePropertyAll(2),
                        backgroundColor:
                            const MaterialStatePropertyAll(buttonColor)),
                    child: Row(
                      children: [
                        kWidth(10),
                        SizedBox(
                            height: 50,
                            child: Image.asset('assets/average.jpg')),
                        kWidth(10),
                        const Text(
                          'Average',
                        ),
                      ],
                    ),
                  ),
                ),
                kHeight(20),
                SizedBox(
                  width: 250,
                  child: RadioMenuButton(
                    value: 'Bad',
                    groupValue: selectedSnack1,
                    onChanged: (selectedValue) {
                      setState(() {
                        selectedSnack1 = selectedValue!;
                      });
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        elevation: const MaterialStatePropertyAll(2),
                        backgroundColor:
                            const MaterialStatePropertyAll(buttonColor)),
                    child: Row(
                      children: [
                        kWidth(10),
                        SizedBox(
                            height: 50, child: Image.asset('assets/bad.jpg')),
                        kWidth(10),
                        const Text(
                          'Bad',
                        ),
                      ],
                    ),
                  ),
                ),
                kHeight(50),
                const Text(
                  'would you like our Hospitality',
                  style: TextStyle(fontSize: 19),
                ),
                Text('Selected item : $selectedSnack2'),
                kHeight(10),
                SizedBox(
                  width: 250,
                  child: RadioMenuButton(
                    value: 'Excellent',
                    groupValue: selectedSnack2,
                    onChanged: (selectedValue) {
                      setState(() {
                        selectedSnack2 = selectedValue!;
                      });
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        elevation: const MaterialStatePropertyAll(2),
                        backgroundColor:
                            const MaterialStatePropertyAll(buttonColor)),
                    child: Row(
                      children: [
                        kWidth(10),
                        SizedBox(
                            height: 50,
                            child: Image.asset('assets/exellent.jpg')),
                        kWidth(10),
                        const Text('Excellent'),
                      ],
                    ),
                  ),
                ),
                kHeight(20),
                SizedBox(
                  width: 250,
                  child: RadioMenuButton(
                    value: 'Good',
                    groupValue: selectedSnack2,
                    onChanged: (selectedValue) {
                      setState(() {
                        selectedSnack2 = selectedValue!;
                      });
                    },
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      elevation: const MaterialStatePropertyAll(2),
                      backgroundColor:
                          const MaterialStatePropertyAll(buttonColor),
                    ),
                    child: Row(
                      children: [
                        kWidth(10),
                        SizedBox(
                            height: 50, child: Image.asset('assets/good.jpg')),
                        kWidth(10),
                        const Text(
                          'Good',
                        ),
                      ],
                    ),
                  ),
                ),
                kHeight(20),
                SizedBox(
                  width: 250,
                  child: RadioMenuButton(
                    value: 'Average',
                    groupValue: selectedSnack2,
                    onChanged: (selectedValue) {
                      setState(() {
                        selectedSnack2 = selectedValue!;
                      });
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        elevation: const MaterialStatePropertyAll(2),
                        backgroundColor:
                            const MaterialStatePropertyAll(buttonColor)),
                    child: Row(
                      children: [
                        kWidth(10),
                        SizedBox(
                            height: 50,
                            child: Image.asset('assets/average.jpg')),
                        kWidth(10),
                        const Text(
                          'Average',
                        ),
                      ],
                    ),
                  ),
                ),
                kHeight(20),
                SizedBox(
                  width: 250,
                  child: RadioMenuButton(
                    value: 'Bad',
                    groupValue: selectedSnack2,
                    onChanged: (selectedValue) {
                      setState(() {
                        selectedSnack2 = selectedValue!;
                      });
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        elevation: const MaterialStatePropertyAll(2),
                        backgroundColor:
                            const MaterialStatePropertyAll(buttonColor)),
                    child: Row(
                      children: [
                        kWidth(10),
                        SizedBox(
                            height: 50, child: Image.asset('assets/bad.jpg')),
                        kWidth(10),
                        const Text(
                          'Bad',
                        ),
                      ],
                    ),
                  ),
                ),
                kHeight(20),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Description',
                      style: TextStyle(fontSize: 19),
                    )),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    controller: descriptonCntrl,
                    keyboardType: TextInputType.streetAddress,
                    decoration:
                        Custom('Share your experience', Icons.wrap_text, 30),
                    validator: (value) {
                      if (descriptonCntrl.text.isEmpty) {
                        return 'Description Field is Empty';
                      }
                      return null;
                    },
                  ),
                ),
                kHeight(20),

                RoundedButtonWidget(
                  buttonText: 'Submit',
                  width: 80,
                  onpressed: () {
                    if (formKey.currentState!.validate()) {
                      processReview();
                    }
                  },
                ),
                kHeight(50)
              ],
            ),
          ),
        ),
      ),
    );
  }

  void processReview() {
    if (selectedSnack == 'None selected' ||
        selectedSnack1 == 'None selected' ||
        selectedSnack2 == 'None selected' ||
        descriptonCntrl.text.isEmpty) {
      addingFailed(
          context, 'Please select all options and fill the description!');
      return;
    }

    ReviewModel review = ReviewModel(
      selectedSnack: selectedSnack,
      selectedSnack1: selectedSnack1,
      selectedSnack2: selectedSnack2,
      description: descriptonCntrl.text.trim(),
    );

    addReviewToDatabase(review);
  }

  void addingFailed(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
      margin: const EdgeInsets.all(10),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
    ));
  }

  void addReviewToDatabase(ReviewModel review) {
    addreview(review);
    addingSuccess(review, context);
  }

  void addingSuccess(ReviewModel value, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('your reviw added to the database successfully!'),
      backgroundColor: Colors.green,
      margin: EdgeInsets.all(10),
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 2),
    ));

    // Show the ThankYouDialog
    showDialog(
      context: context,
      builder: (BuildContext context) => const ThankYouDialog(),
    );

    // Navigate back to previous screen after a delay
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pop();
      Navigator.of(context).pop();
    });
  }
}

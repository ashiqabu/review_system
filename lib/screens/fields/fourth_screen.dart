import 'package:flutter/material.dart';
import 'package:review_system_kottakal_om/core/constant.dart';
import 'package:review_system_kottakal_om/db/functions/db_functions.dart';
import 'package:review_system_kottakal_om/db/model/review_model.dart';
import 'package:review_system_kottakal_om/screens/splash.dart';
import 'package:review_system_kottakal_om/screens/thankyou.dart';
import 'package:review_system_kottakal_om/screens/widgets/button.dart';
import 'package:review_system_kottakal_om/screens/widgets/widget.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({Key? key, required this.statuses}) : super(key: key);
  final Map<String, dynamic> statuses;

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  final descriptionCtrl = TextEditingController();
  String selectedTick = 'none Selected';
  String selectedClose = 'none Selected';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kHeight(20),
                Text(
                  'هل انت راضى عن خدماتنا المقدمه لك؟',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                kHeight(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 90,
                      child: Center(
                        child: RadioMenuButton(
                          value: 'good',
                          groupValue: selectedTick,
                          onChanged: (selectedValue) {
                            setState(() {
                              selectedTick = selectedValue!;
                            });
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                            ),
                            elevation: MaterialStateProperty.all<double>(2),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(checkBoxClr),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check,
                                color: Colors.green,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    kWidth(20),
                    SizedBox(
                      width: 90,
                      child: Center(
                        child: RadioMenuButton(
                          value: 'bad',
                          groupValue: selectedTick,
                          onChanged: (selectedValue) {
                            setState(() {
                              selectedTick = selectedValue!;
                            });
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                            ),
                            elevation: MaterialStateProperty.all<double>(2),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(checkBoxClr),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.close,
                                color: Colors.red,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                kHeight(20),
                Text(
                  'هل تود زيارتنا فى المرات القادمة؟',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                kHeight(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 90,
                      child: Center(
                        child: RadioMenuButton(
                          value: 'good',
                          groupValue: selectedClose,
                          onChanged: (selectedValue) {
                            setState(() {
                              selectedClose = selectedValue!;
                            });
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                            ),
                            elevation: MaterialStateProperty.all<double>(2),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(checkBoxClr),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check,
                                color: Colors.green,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    kWidth(20),
                    SizedBox(
                      width: 90,
                      child: Center(
                        child: RadioMenuButton(
                          value: 'bad',
                          groupValue: selectedClose,
                          onChanged: (selectedValue) {
                            setState(() {
                              selectedClose = selectedValue!;
                            });
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                            ),
                            elevation: MaterialStateProperty.all<double>(2),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(checkBoxClr),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.close,
                                color: Colors.red,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                kHeight(20),
                kHeight(20),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'وصف',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    controller: descriptionCtrl,
                    keyboardType: TextInputType.streetAddress,
                    decoration: Custom('شارك خبرتك', Icons.wrap_text, 30),
                  ),
                ),
                kHeight(20),
                RoundedButtonWidget(
                  buttonText: 'حفظ',
                  width: 80,
                  onPressed: () {
                    processReview();
                  },
                ),
                kHeight(50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void processReview() {
    if (selectedTick == 'none Selected' || selectedClose == 'none Selected') {
      addingFailed(
          context, 'Please select an option form the radio questions.');
      return;
    }

    String serviceStatus = widget.statuses['serviceStatus'] ?? 'Not specified';
    String treatmentStatus =
        widget.statuses['treatmentStatus'] ?? 'Not specified';
    String hospitalityStatus =
        widget.statuses['hospitalityStatus'] ?? 'Not specified';

    ReviewModel review = ReviewModel(
        selectedSnack: serviceStatus,
        selectedSnack1: treatmentStatus,
        selectedSnack2: hospitalityStatus,
        description: descriptionCtrl.text.trim(),
        selectedTick: selectedTick,
        selectedClose: selectedClose);

    addReviewToDatabase(review);
    descriptionCtrl.clear();
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
    showDialog(
      context: context,
      builder: (BuildContext context) => const ThankYouDialog(),
    );

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SplashScreen()),
      );
    });
  }
}

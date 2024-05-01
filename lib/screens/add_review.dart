import 'package:flutter/material.dart';
import 'package:review_system_kottakal_om/core/constant.dart';
import 'package:review_system_kottakal_om/screens/fields/second_screen.dart';

class AddReview extends StatefulWidget {
  const AddReview({super.key});

  @override
  State<AddReview> createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  String selectedSnack = 'لم يتم تحديد أي شيء';
  Map<String, dynamic> statuses = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              kHeight(50),
              const Text(
                'يهتم موظف الاستقبال بترحيب بكم و بتقديم أفضل الخدمات',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              Text('العنصر المحدد : $selectedSnack'),
              kHeight(20),
              SizedBox(
                width: 250,
                child: RadioMenuButton(
                  value: 'ممتاز',
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
                      const Text('ممتاز'),
                    ],
                  ),
                ),
              ),
              kHeight(20),
              SizedBox(
                width: 250,
                child: RadioMenuButton(
                  value: 'جيد',
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
                        'جيد',
                      ),
                    ],
                  ),
                ),
              ),
              kHeight(20),
              SizedBox(
                width: 250,
                child: RadioMenuButton(
                  value: 'متوسط',
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
                          height: 50, child: Image.asset('assets/average.jpg')),
                      kWidth(10),
                      const Text(
                        'متوسط',
                      ),
                    ],
                  ),
                ),
              ),
              kHeight(20),
              SizedBox(
                width: 250,
                child: RadioMenuButton(
                  value: 'سيء',
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
                        'سيء',
                      ),
                    ],
                  ),
                ),
              ),
              kHeight(40),
              ElevatedButton(
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.only(
                        left: 40, right: 40, top: 10, bottom: 10)),
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                onPressed: () {
                  if (selectedSnack == 'لم يتم تحديد أي شيء') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 1),
                        content: Text('Please select a value.'),
                      ),
                    );
                  } else {
                    statuses['serviceStatus'] = selectedSnack;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(
                          statuses: statuses,
                        ),
                      ),
                    );
                  }
                },
                child: const Text(
                  'التالي',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

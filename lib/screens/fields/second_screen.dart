import 'package:flutter/material.dart';
import 'package:review_system_kottakal_om/core/constant.dart';
import 'package:review_system_kottakal_om/screens/fields/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key, required this.statuses});
  final Map<String, dynamic> statuses;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String selectedSnack1 = 'لم يتم تحديد أي شيء';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              kHeight(50),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: const Text(
                  'يهتم المعالجون بتقديم خدمة تساهم في علاجك وتلبية احتياجتك بكل سهولة أثناء تواجدك فى غرف العلاج',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
              Text('العنصر المحدد  : $selectedSnack1'),
              kHeight(20),
              SizedBox(
                width: 250,
                child: RadioMenuButton(
                  value: 'ممتاز',
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
                        'سيء',
                      ),
                    ],
                  ),
                ),
              ),
              kHeight(40),
              ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                    padding: MaterialStatePropertyAll(EdgeInsets.only(
                        left: 40, right: 40, top: 10, bottom: 10)),
                  ),
                  onPressed: () {
                    if (selectedSnack1 == 'لم يتم تحديد أي شيء') {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 1),
                          content: Text('Please select a value.'),
                        ),
                      );
                    } else {
                      widget.statuses['treatmentStatus'] = selectedSnack1;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScreenThree(
                                    statuses: widget.statuses,
                                  )));
                    }
                  },
                  child: const Text(
                    'التالي',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

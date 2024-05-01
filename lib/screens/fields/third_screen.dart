import 'package:flutter/material.dart';
import 'package:review_system_kottakal_om/core/constant.dart';
import 'package:review_system_kottakal_om/screens/fields/fourth_screen.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key, required this.statuses});
  final Map<String, dynamic> statuses;

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  String selectedSnack2 = 'لم يتم تحديد أي شيء';
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
                'يهتم موظفو المركز بالنظافةوالتعقيم والمظهر العام وحسن الضيافة لزوار المركز',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              Text(' العنصر المحدد : $selectedSnack2'),
              kHeight(20),
              SizedBox(
                width: 250,
                child: RadioMenuButton(
                  value: 'ممتاز',
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
                    if (selectedSnack2 == 'لم يتم تحديد أي شيء') {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 1),
                          content: Text('Please select a value.'),
                        ),
                      );
                    } else {
                      widget.statuses['hospitalityStatus'] = selectedSnack2;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScreenFour(
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

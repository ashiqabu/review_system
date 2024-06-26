import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:review_system_kottakal_om/core/constant.dart';
import 'package:review_system_kottakal_om/db/functions/db_functions.dart';
import 'package:review_system_kottakal_om/screens/add_review.dart';
import 'package:review_system_kottakal_om/screens/password_screen.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    getAllReview();
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Alert'),
              content: const Text('Do you want to Exit'),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text('No'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text('Yes'),
                ),
              ],
            );
          },
        );
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,
              Color.fromARGB(255, 69, 185, 73),
            ], begin: Alignment.topRight, end: Alignment.bottomLeft),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  height: 150,
                  width: 150,
                ),
                GestureDetector(
                  onLongPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PasswordScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Its Review Time',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kalam',
                    ),
                  ),
                ),
                kHeight(20),
                SizedBox(
                  height: 500,
                  child: Lottie.asset(
                    'animations/Animation - 1699676750809.json',
                    height: 100,
                  ),
                ),
                kHeight(20),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'من فضلك ساهم معنا في تقييم عمل موظفو المركز من خلال مشاركتك بتعبئة الاستبيان',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kalam',
                    ),
                  ),
                ),
                kHeight(30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddReview(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 25,
                    ),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                        color: Colors.black,
                      ),
                      kWidth(10),
                      const Text(
                        'البدء',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

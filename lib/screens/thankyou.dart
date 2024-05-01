import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ThankYouDialog extends StatelessWidget {
  const ThankYouDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(
              'animations/WdXBKIAKKK.json',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'نشكركم على مشاركتكم لنا  والتى ستساهم في تطوير المركز',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

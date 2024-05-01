// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:lottie/lottie.dart';
// import 'package:review_system_kottakal_om/core/constant.dart';
// import 'package:review_system_kottakal_om/db/functions/db_functions.dart';
// import 'package:review_system_kottakal_om/screens/add_review.dart';
// import 'package:review_system_kottakal_om/screens/veiw_review.dart';

// class LandingScreen extends StatelessWidget {
//   const LandingScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;

//     getAllReview();
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(colors: [
//               Colors.white,
//               Color.fromARGB(255, 69, 185, 73),
//             ], begin: Alignment.topRight, end: Alignment.bottomLeft),
//           ),
//           child: Stack(
//             children: [
//               Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     kHeight(85),
//                     Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: GestureDetector(
//                         onLongPress: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const ReviewList(),
//                             ),
//                           );
//                         },
//                         child: Text(
//                           'Add your valuable review...',
//                           style: GoogleFonts.aboreto(
//                             fontSize: screenSize.width * 0.08,
//                             color: const Color.fromARGB(255, 46, 45, 45),
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Lottie.asset(
//                       'animations/Animation - 1699676750809.json',
//                       width: screenSize.width * 1.2,
//                       height: screenSize.width * 1.2,
//                       fit: BoxFit.contain,
//                     ),
//                     kHeight(screenSize.height * 0.04),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const AddReview(),
//                           ),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.white,
//                         padding: EdgeInsets.symmetric(
//                           horizontal: screenSize.width * 0.05,
//                           vertical: screenSize.width * 0.025,
//                         ),
//                         elevation: 4,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Icon(
//                             Icons.arrow_forward_ios,
//                             size: screenSize.width * 0.04,
//                             color: Colors.black,
//                           ),
//                           SizedBox(width: screenSize.width * 0.02),
//                           const Text(
//                             'Get Started',
//                             style: TextStyle(color: Colors.black),
//                           ),
//                         ],
//                       ),
//                     ),
//                     kHeight(80)
//                   ],
//                 ),
//               ),
//               Positioned(
//                 top: screenSize.height * 0.020,
//                 right: screenSize.width * -0.06,
//                 child: Image.asset(
//                   'assets/logo.png',
//                   width: screenSize.width * 0.30,
//                   height: screenSize.width * 0.30,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

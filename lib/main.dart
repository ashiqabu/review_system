import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:review_system_kottakal_om/db/functions/db_functions.dart';
import 'package:review_system_kottakal_om/db/model/review_model.dart';
import 'package:review_system_kottakal_om/screens/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(ReviewModelAdapter().typeId)) {
    Hive.registerAdapter(ReviewModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    getAllReview();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Review System',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:review_system_kottakal_om/db/model/review_model.dart';
import 'package:review_system_kottakal_om/screens/landing_screen.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

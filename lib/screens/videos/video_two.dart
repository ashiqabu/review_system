import 'package:flutter/material.dart';
import 'package:review_system_kottakal_om/screens/home_screen.dart';
import 'package:review_system_kottakal_om/screens/widgets/videoPlayerwidget.dart';

class VideoTwo extends StatefulWidget {
  const VideoTwo({super.key});

  @override
  State<VideoTwo> createState() => _VideoTwoState();
}

class _VideoTwoState extends State<VideoTwo> {
  late Future<void> _navigateToNextScreen;

  @override
  void initState() {
    super.initState();
    _navigateToNextScreen = Future.delayed(const Duration(seconds: 60), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.black],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Stack(
          children: [
            const Center(
              child: VideoPlayerWidget(videoUrl: 'assets/video/video2.mp4'),
            ),
            Positioned(
              bottom: 40.0,
              right: 30.0,
              child: TextButton.icon(
                onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen())),
                icon: const Icon(
                  Icons.skip_next_rounded,
                  color: Colors.black,
                ),
                label: const Text(
                  'Review',
                  style: TextStyle(color: Colors.black),
                ),
                style: TextButton.styleFrom(
                  // Adjust button style (optional)
                  foregroundColor: Colors.white,
                  backgroundColor:
                      Colors.white.withOpacity(0.5), // Button background
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Button shape
                  ),
                ),
              ),
            ),
            FutureBuilder(
              future: _navigateToNextScreen,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(); // Optional: Hide the video after navigation
                }
                return Container(); // Optional: Add a loading indicator here
              },
            ),
          ],
        ),
      ),
    );
  }
}

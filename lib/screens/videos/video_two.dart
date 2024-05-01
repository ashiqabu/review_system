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
              // Position the button at the bottom right corner
              bottom: 20.0, // Adjust margin from bottom as needed
              right: 20.0, // Adjust margin from right as needed
              child: TextButton.icon(
                onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen())),
                icon: const Icon(Icons.skip_next),
                label: const Text('Review'),
                style: TextButton.styleFrom(
                  // Adjust button style (optional)
                  foregroundColor: Colors.white,
                  backgroundColor:
                      Colors.black.withOpacity(0.5), // Button background
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

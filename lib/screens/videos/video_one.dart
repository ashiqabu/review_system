import 'package:flutter/material.dart';
import 'package:review_system_kottakal_om/screens/videos/video_two.dart';
import 'package:review_system_kottakal_om/screens/widgets/videoPlayerwidget.dart';

class VideoOne extends StatefulWidget {
  const VideoOne({super.key});

  @override
  State<VideoOne> createState() => _VideoOneState();
}

class _VideoOneState extends State<VideoOne> {
  late Future<void> _navigateToNextScreen;

  @override
  void initState() {
    super.initState();

    _navigateToNextScreen = Future.delayed(const Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const VideoTwo()));
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: VideoPlayerWidget(videoUrl: 'assets/video/video1.mp4'),
          ),
          FutureBuilder(
            future: _navigateToNextScreen,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Container();
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}

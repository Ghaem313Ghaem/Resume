import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    Timer(const Duration(seconds: 30000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MainCalculationScreen(),
        ),
      );
    });

    // _controller = VideoPlayerController.networkUrl(
    //   Uri.parse(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    //   ),
    // );

    _controller = VideoPlayerController.asset("./assets/videos/Flutter.mp4")
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        }); //here you could use Provider or any other state management approach. I use bloc
      });

    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    // _videoPlayerController =
    //     VideoPlayerController.asset("./assets/videos/Drop_Splitting.mp4")
    //       ..addListener(() => setState(() {}))
    //       ..initialize().then((_) {
    //         _videoPlayerController.setVolume(0.0);
    //         _videoPlayerController.play();
    //         _videoPlayerController.setLooping(true);
    //         setState(() {});
    //       });
    // _videoPlayerController.initialize().then((_) {
    //   // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    //   setState(() {});
    // });

    // _chewieController = ChewieController(
    //   videoPlayerController: _videoPlayerController,
    //   aspectRatio: 15 / 6,
    //   autoPlay: true,
    //   looping: true,
    //   showControls: true, // Hide the controls
    //   // Errors can occur for example when trying to play a video
    //   // from a non-existent URL
    //   errorBuilder: (context, errorMessage) {
    //     return Center(
    //       child: Text(
    //         errorMessage,
    //         style: const TextStyle(color: Colors.white),
    //       ),
    //     );
    //   },
    // );

    // _videoPlayerController.setLooping(true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 191, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "./assets/images/Logo.png",
              width: MediaQuery.of(context).orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.width * 0.7
                  : MediaQuery.of(context).size.height * 0.7,
            ),
            Text(
              "Convi",
              style: TextStyle(
                fontFamily: "LilitaOne",
                fontSize:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.17
                        : MediaQuery.of(context).size.height * 0.17,
              ),
            ),
            Text(
              "Easy Unit Converter",
              style: TextStyle(
                fontFamily: "SegoeUI",
                fontSize:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.08
                        : MediaQuery.of(context).size.height * 0.08,
                letterSpacing: -2,
                color: Colors.black,
              ),
            ),
            FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If the VideoPlayerController has finished initialization, use
                  // the data it provides to limit the aspect ratio of the video.
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    // Use the VideoPlayer widget to display the video.
                    child: VideoPlayer(_controller),
                  );
                } else {
                  // If the VideoPlayerController is still initializing, show a
                  // loading spinner.
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Wrap the play or pause in a call to `setState`. This ensures the
          // correct icon is shown.
          setState(() {
            // If the video is playing, pause it.
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // If the video is paused, play it.
              _controller.play();
            }
          });
        },
        // Display the correct icon depending on the state of the player.
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}

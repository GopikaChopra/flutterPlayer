import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';
import 'package:new_player/screens/videoplayer/video_player_controllers.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: BetterPlayer(
          controller: VideoPlayerController.liveVideoController(
              'http://live.roomba.tv/live/achhar.developer@gmail.com/3hSdCcZFs8/1383043.ts') //_betterPlayerController!,
          ),
    );
  }
}

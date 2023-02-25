import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_player/screens/videoplayer/video_player_controllers.dart';

import '../../utils/video_providers.dart';

class VideoPlayer extends ConsumerStatefulWidget {
  const VideoPlayer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends ConsumerState<ConsumerStatefulWidget> {
  late BetterPlayerController betterController;

  @override
  void initState() {
    super.initState();
    betterController = VideoPlayerController.liveVideoController(
        'http://live.roomba.tv/live/achhar.developer@gmail.com/3hSdCcZFs8/1383043.ts');
  }

  @override
  void dispose() {
    super.dispose();
    betterController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final betterPlayController = ref.watch(betterPlayerController);
    return AspectRatio(
        aspectRatio: 16 / 9,
        child: BetterPlayer(
            controller: betterPlayController // betterPlayController,
            ));
  }
}

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
  @override
  void initState() {
    super.initState();

    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final betterPlayController = ref.watch(betterPlayerController);

    return AspectRatio(
        aspectRatio: 16 / 9,
        child: BetterPlayer(
          controller: betterPlayController,
        ));
  }
}

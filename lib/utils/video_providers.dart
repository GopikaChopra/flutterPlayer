import 'package:better_player/better_player.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:new_player/screens/videoplayer/video_player_controllers.dart';

final videoPlayerHeight = Provider((ref) => 70);

final miniPlayerController = Provider((ref) => MiniplayerController());

final betterPlayerController = StateProvider<BetterPlayerController>((ref) =>
    VideoPlayerController.liveVideoController(
        "http://live.roomba.tv/live/achhar.developer@gmail.com/3hSdCcZFs8/1383043.ts"));

final isVideoPlayingController = StateProvider((ref) => false);

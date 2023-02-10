import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:better_player/better_player.dart';
import 'package:miniplayer/miniplayer.dart';


class CustVideoPlayer extends StatefulWidget {
  const CustVideoPlayer({super.key});

  @override
  State<CustVideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<CustVideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return BetterPlayer.network(
              "https://rawgit.com/uit2712/Mp3Container/master/tom_and_jerry_31.mp4",
              betterPlayerConfiguration: BetterPlayerConfiguration(
                aspectRatio: 16 / 9,
              ),
            );
            
  }
}
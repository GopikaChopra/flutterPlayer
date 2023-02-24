import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:better_player/better_player.dart';
import 'package:miniplayer/miniplayer.dart';


class LiveVideoPlayer extends StatefulWidget {
  const LiveVideoPlayer({super.key});

  @override
  State<LiveVideoPlayer> createState() => _LiveVideoPlayerState();
}

class _LiveVideoPlayerState extends State<LiveVideoPlayer> {

  BetterPlayerController? _betterPlayerController;

  @override
  void initState() {
    super.initState();
    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      "http://live.roomba.tv/live/achhar.developer@gmail.com/3hSdCcZFs8/1383042.m3u8",
      liveStream: false,
      // useAsmsSubtitles: true,
      // hlsTrackNames: ["Low quality", "Not so low quality", "Medium quality"],
      subtitles: [
        BetterPlayerSubtitlesSource(
          type: BetterPlayerSubtitlesSourceType.network,
          name: "EN",
          urls: [
            "https://dl.dropboxusercontent.com/s/71nzjo2ux3evxqk/example_subtitles.srt"
          ],
        ),

        BetterPlayerSubtitlesSource(
          type: BetterPlayerSubtitlesSourceType.network,
          name: "DE",
          urls: [
            "https://dl.dropboxusercontent.com/s/71nzjo2ux3evxqk/example_subtitles.srt"
          ],
        ),
      ],
      bufferingConfiguration: BetterPlayerBufferingConfiguration(
        minBufferMs: 5000000,
        maxBufferMs: 13107200,
        bufferForPlaybackMs: 250000,
        bufferForPlaybackAfterRebufferMs: 500000,
      ),
    );
    _betterPlayerController = BetterPlayerController(
        BetterPlayerConfiguration(),
        betterPlayerDataSource: betterPlayerDataSource);
  }


  @override
  Widget build(BuildContext context) {
    return AspectRatio(

      aspectRatio: 16 / 9,
      child: BetterPlayer(
        controller: _betterPlayerController!,
      ),
    );
  }

  }

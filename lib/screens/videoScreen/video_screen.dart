import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_player/utils/video_providers.dart';
import 'package:new_player/screens/videoplayer/video_player.dart';

import '../movie_screen_view.dart';

class VideoPlayerScreen extends StatefulWidget {
  final double miniPlayerHeight;
  final double miniPlayerHeightPercent;
  const VideoPlayerScreen(
      {Key? key,
      required this.miniPlayerHeight,
      required this.miniPlayerHeightPercent})
      : super(key: key);

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    // print(widget.miniPlayerHeight);
    // print(ref.watch(miniPlayHeight));
    print(widget.miniPlayerHeight);

    double? renderPlayerHeight(height, percent) {
      if (height == 70.0) {
        return 70.0;
      } else if (percent == 1.0) {
        return null;
      } else {
        return 70.0;
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              color: Colors.red,
              width: double.infinity,
              height: renderPlayerHeight(
                  widget.miniPlayerHeight, widget.miniPlayerHeightPercent),
              child: const SizedBox(
                child: VideoPlayer(),
              ),
            ),
            Consumer(builder: (context, ref, child) {
              final isVideoPlaying = ref.watch(isVideoPlayingController);

              return Offstage(
                offstage: widget.miniPlayerHeight == 70.0 ? false : true,
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(color: Colors.green[400]),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        ref.read(isVideoPlayingController.notifier).state =
                            false;
                      },
                      child: Icon(
                        Icons.close,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              );
            })
          ],
        ),
        // const Text("Trran")
        Consumer(
          builder: (context, ref, child) {
            final betterPlayController = ref.watch(betterPlayerController);

            return Visibility(
              visible: !betterPlayController.isFullScreen,
              child: Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 100,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return index == 0
                          ? const Text("Dtaa")
                          : Text(
                              "strat",
                              style: TextStyle(fontSize: 30),
                            );
                    }),
              ),
            );
          },
        )
      ],
    );
  }
}

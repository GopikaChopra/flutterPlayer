import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:new_player/utils/video_providers.dart';

class MoviePoster extends ConsumerStatefulWidget {
  const MoviePoster({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MoviePosterState();
}

class _MoviePosterState extends ConsumerState<ConsumerStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final miniPlayController = ref.watch(miniPlayerController);

    return GestureDetector(
      onTap: () {
        ref.read(isVideoPlayingController.notifier).state = true;
        // Future.delayed(Duration(milliseconds: 100));
        miniPlayController.animateToHeight(state: PanelState.MAX);
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          image: const DecorationImage(
            image: AssetImage('assets/images/joker.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

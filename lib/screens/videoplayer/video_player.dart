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
 BetterPlayerController? _testController;

 

  

  @override
  void initState() {
    super.initState();

      BetterPlayerController _testController =BetterPlayerController(
      const BetterPlayerConfiguration(
        aspectRatio: 16 / 9,
        fit: BoxFit.contain,
      ),
      betterPlayerDataSource:
          BetterPlayerDataSource(BetterPlayerDataSourceType.network, "http://live.roomba.tv/live/achhar.developer@gmail.com/3hSdCcZFs8/1383042.ts",
              bufferingConfiguration: const BetterPlayerBufferingConfiguration(
                minBufferMs: 5000,
                maxBufferMs: 15000,
                bufferForPlaybackMs: 3000,
                bufferForPlaybackAfterRebufferMs: 5000,
              ),
              liveStream: true),
    );
    
    
    
    // stController.initialize();
    _testController.setupDataSource(_testController.betterPlayerDataSource!)
.then((response) {
  // Source loaded successfully
  print("LOAEDD");
})
.catchError((error) async {
  // Source did not load, url might be invalid
 print("ERRROR");
 print(error);
});
    
    
     
  

         

    
  }

  @override
  void dispose() {
    super.dispose();
     
  }

  @override
  Widget build(BuildContext context) {
    final betterPlayController = ref.watch(betterPlayerController);

    if(  _testController != null &&   _testController!.hasCurrentDataSourceStarted){
return AspectRatio(
        aspectRatio: 16 / 9,
        child: BetterPlayer(
            controller: BetterPlayerController(
      const BetterPlayerConfiguration(
        aspectRatio: 16 / 9,
        fit: BoxFit.contain,
      ),
      betterPlayerDataSource:
          BetterPlayerDataSource(BetterPlayerDataSourceType.network, "https://rawgit.com/uit2712/Mp3Container/master/tom_and_jerry_31.mp4",
              bufferingConfiguration: const BetterPlayerBufferingConfiguration(
                minBufferMs: 5000,
                maxBufferMs: 15000,
                bufferForPlaybackMs: 3000,
                bufferForPlaybackAfterRebufferMs: 5000,
              ),
              ),
    )  // betterPlayController,
            ));
    }else{
      return Text("earching...");
    }
    
  }
}

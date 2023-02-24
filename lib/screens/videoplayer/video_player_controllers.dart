import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class VideoPlayerController {
  static BetterPlayerController liveVideoController(String url) {
    return BetterPlayerController(
      const BetterPlayerConfiguration(
        aspectRatio: 16 / 9,
        fit: BoxFit.contain,
      ),
      betterPlayerDataSource:
          BetterPlayerDataSource(BetterPlayerDataSourceType.network, url,
              bufferingConfiguration: const BetterPlayerBufferingConfiguration(
                minBufferMs: 5000,
                maxBufferMs: 15000,
                bufferForPlaybackMs: 3000,
                bufferForPlaybackAfterRebufferMs: 5000,
              ),
              liveStream: true),
    );
  }
}

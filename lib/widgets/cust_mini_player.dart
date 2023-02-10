import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:new_player/widgets/video_player.dart';

class CustMiniPlayer extends StatefulWidget {
  const CustMiniPlayer({super.key});

  @override
  State<CustMiniPlayer> createState() => _CustMiniPlayerState();
}

class _CustMiniPlayerState extends State<CustMiniPlayer> {

  static const double _playerminheight = 60.0;

  @override
  Widget build(BuildContext context) {
    return Miniplayer(
              minHeight: _playerminheight,
              maxHeight: MediaQuery.of(context).size.height,
              builder: (height, percentage) {
               return Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: CustVideoPlayer());
              },
            );
  }
}
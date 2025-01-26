import 'dart:ffi';

import 'package:flutter/material.dart';

class SoundTrack extends StatelessWidget {
  int number;
  String artist;
  String song;
  Duration duration;

  SoundTrack(
      {super.key,
      required this.number,
      required this.artist,
      required this.song,
      required this.duration});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        "$number",
        style: const TextStyle(fontSize: 16),
      ),
      title: Text(
        song,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "$artist - ${duration.inMinutes}:${duration.inSeconds % 60}",
        style: TextStyle(color: Theme.of(context).colorScheme.scrim),
      ),
      trailing: Icon(
        Icons.more_horiz,
        color: Theme.of(context).colorScheme.scrim,
      ),
    );
  }
}

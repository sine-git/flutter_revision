import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_revision/pages/music-player/components/player-elevated-button.dart';
import 'package:flutter_revision/pages/music-player/components/sound-track.dart';

class PlayListPage extends StatefulWidget {
  const PlayListPage({super.key});

  @override
  State<PlayListPage> createState() => PlayListPageState();
}

class PlayListPageState extends State<PlayListPage> {
  int currentIndex = 0;
  List<dynamic> songs = [
    {
      "duration": const Duration(minutes: 4, seconds: 50),
      "number": 1,
      "artist": "To speak of solitude",
      "song": "Man in the mirror"
    },
    {
      "duration": const Duration(minutes: 2, seconds: 50),
      "number": 2,
      "artist": "Michael Jackson",
      "song": "Heal the world"
    },
    {
      "duration": const Duration(minutes: 3, seconds: 35),
      "number": 3,
      "artist": "Chris Brown",
      "song": "In my heart"
    },
    {
      "duration": const Duration(minutes: 4, seconds: 50),
      "number": 4,
      "artist": "Jennifer Lopez",
      "song": "On the floor"
    },
    {
      "duration": const Duration(minutes: 1, seconds: 50),
      "number": 5,
      "artist": "Oumou Sangaré",
      "song": "Iyo Djeli"
    },
    {
      "duration": const Duration(minutes: 4, seconds: 50),
      "number": 6,
      "artist": "To speak of solitude",
      "song": "Man in the mirror"
    },
    {
      "duration": const Duration(minutes: 4, seconds: 50),
      "number": 7,
      "artist": "To speak of solitude",
      "song": "Man in the mirror"
    },
    {
      "duration": const Duration(minutes: 4, seconds: 50),
      "number": 8,
      "artist": "To speak of solitude",
      "song": "Man in the mirror"
    },
    {
      "duration": const Duration(minutes: 4, seconds: 50),
      "number": 9,
      "artist": "To speak of solitude",
      "song": "Man in the mirror"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Modular.to.navigate("/music/player");
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    //height: MediaQuery.of(context).size.height * 0.3,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildImage(context),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: SizedBox(
                                height: 140,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    buildTitles(context),
                                    const Row(
                                      children: [
                                        Icon(CupertinoIcons.add_circled),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          child: Icon(
                                              CupertinoIcons.download_circle),
                                        ),
                                        Icon(CupertinoIcons.tv_music_note),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        buildActionButtons(context)
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 70),
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: songs.length,
                        itemBuilder: (context, index) => SoundTrack(
                            duration: songs[index]["duration"],
                            number: songs[index]["number"],
                            artist: songs[index]["artist"],
                            song: songs[index]["song"])),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: buildBottomNavigation(context, currentIndex),
    );
  }
}

Widget buildBottomNavigation(BuildContext context, int currentIndex) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 150,
          //padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              color: Theme.of(context).colorScheme.primary),
          //height: 100,
          child: ListTile(
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.color),
                child: Image.network(
                  "https://i.pinimg.com/736x/ce/04/e1/ce04e1711f161d6e9cfd94e5868d67c7.jpg",
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
            title: Text("Unsayable",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inverseSurface,
                    fontWeight: FontWeight.bold)),
            subtitle: Text("Brambles",
                style: TextStyle(color: Theme.of(context).colorScheme.scrim)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.favorite_outline,
                  color: Theme.of(context).colorScheme.inverseSurface,
                  size: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: IconButton(
                      color: Theme.of(context).colorScheme.primary,
                      style: ButtonStyle(
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                          backgroundColor: WidgetStatePropertyAll(
                              Theme.of(context).colorScheme.inverseSurface)),
                      onPressed: () {},
                      icon: const Icon(Icons.pause)),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.09),
              blurRadius: 0.5,
              offset: const Offset(0, -3))
        ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: BottomNavigationBar(
              currentIndex: currentIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (value) {},
              items: const [
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 14),
                      child: Icon(Icons.home),
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 14),
                      child: Icon(Icons.search_outlined),
                    ),
                    label: "Search"),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 14),
                      child: Icon(Icons.queue_music),
                    ),
                    label: "Library"),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 14),
                      child: Icon(Icons.local_fire_department),
                    ),
                    label: "Hotlist"),
              ]),
        ),
      ),
    ],
  );
}

Widget buildImage(BuildContext context) {
  return Container(
    width: 140,
    height: 140,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
      BoxShadow(
          blurRadius: 2,
          color: Theme.of(context).colorScheme.primary,
          offset: const Offset(0, 10))
    ]),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        "https://i.pinimg.com/736x/ce/04/e1/ce04e1711f161d6e9cfd94e5868d67c7.jpg",
        fit: BoxFit.cover,
        alignment: Alignment.bottomCenter,
      ),
    ),
  );
}

Widget buildTitles(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Album - 8 songs - 2012",
        style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      ),
      const Text(
        "Charcoal",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Text(
        "Brambies",
        style: TextStyle(
          fontSize: 18,
          color: Theme.of(context).colorScheme.secondary,
          //decoration: TextDecoration.underline
        ),
      ),
    ],
  );
}

Widget buildActionButtons(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 40),
    child: Row(
      children: [
        Expanded(
            child: PlayerElevatedButton(
          text: "Play",
          icon: Icons.play_circle,
          textColor: Theme.of(context).colorScheme.inverseSurface,
          backgroundColor: Theme.of(context).colorScheme.primary,
        )),
        const SizedBox(
          width: 15,
        ),
        Expanded(
            child: PlayerElevatedButton(
          text: "Shuffle",
          icon: Icons.shuffle,
          textColor: Theme.of(context).colorScheme.scrim,
          backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        ))
      ],
    ),
  );
}

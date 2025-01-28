import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SongPlayerPage extends StatefulWidget {
  const SongPlayerPage({super.key});

  @override
  State<SongPlayerPage> createState() => SongPlayerPageState();
}

class SongPlayerPageState extends State<SongPlayerPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_drop_down),
        title: const Text(
          "Now Playing",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.my_library_music_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Container(
                width: 240,
                height: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          color: Theme.of(context).colorScheme.primary,
                          offset: const Offset(0, 10))
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/guitar.jpg",
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    const Text(
                      "Unsayable",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Theme.of(context).colorScheme.secondary,
                    )
                  ],
                ),
              ),
              Center(
                child: Text(
                  "Brambles",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("1:04"), Text("2:52")],
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.repeat_one,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const Expanded(child: SizedBox()),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.skip_previous,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              iconColor: Colors.white,
                              padding: const EdgeInsets.all(25),
                              shape: const CircleBorder()),
                          child: const Icon(Icons.play_arrow, size: 25),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.skip_next, size: 30),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  InkWell(
                    child: Icon(
                      Icons.queue_music,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    onTap: () {
                      Modular.to.navigate("/music/play-list");
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 2,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.queue_music), label: "Library"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_fire_department), label: "Hotlist"),
          ]),
    );
  }
}

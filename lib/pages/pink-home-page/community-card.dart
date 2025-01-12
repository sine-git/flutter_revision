import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommunityCard extends StatelessWidget {
  int minutes;
  String description;
  int members;
  List<Color> backgroundGradient;
  CommunityCard(
      {super.key,
      required this.minutes,
      required this.description,
      required this.members,
      required this.backgroundGradient});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 12, bottom: 20, right: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: backgroundGradient)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(TextSpan(
              text: "$minutes",
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              children: const [
                TextSpan(
                    text: " MIN",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200))
              ])),
          const SizedBox(
            height: 35,
          ),
          Text(description,
              style:
                  const TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1.5),
                        shape: BoxShape.circle,
                        //color: Colors.green,
                      ),
                      child: ClipOval(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          "assets/images/profile-hijab.jpeg",
                          fit: BoxFit.cover,
                        ),
                      )),
                  Positioned(
                    right: -20,
                    child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.5),
                          shape: BoxShape.circle,
                          //color: Colors.blue,
                        ),
                        child: ClipOval(
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "assets/images/profile-homme.jpeg",
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                  Positioned(
                    right: -40,
                    child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.5),
                          shape: BoxShape.circle,
                          //color: Colors.yellow,
                        ),
                        child: ClipOval(
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "assets/images/women-one.jpeg",
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                ],
              ),
              Text("+$members People",
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w200)),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecommandationCardWidget extends StatelessWidget {
  const RecommandationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFF1BD760), shape: BoxShape.circle),
                  height: 40,
                  width: 40,
                  child: const Icon(
                    FontAwesomeIcons.spotify,
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Product Manager",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Spotify Music, Jakarta",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              decoration: BoxDecoration(
                  color: const Color(0xFF125A37),
                  borderRadius: BorderRadius.circular(8)),
              child: const Text(
                "Apply this job",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

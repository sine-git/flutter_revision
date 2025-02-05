import 'package:flutter/material.dart';
import 'package:flutter_revision/green-beauty/shapes/polygone.dart';

class Tag extends StatelessWidget {
  const Tag({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: Polygone(),
        child: Container(
          alignment: Alignment.center,
          color: Theme.of(context).colorScheme.secondary,
          height: 90,
          width: 90,
          child: ClipPath(
              clipper: Polygone(),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    //color: Colors.blue,
                    border: Border.all(
                  width: 1,
                  color: //Colors.white
                      Theme.of(context).colorScheme.surface,
                )),
                height: 81,
                width: 81,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.surface),
                        "15%"),
                    Text(
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.surface),
                        "OFF")
                  ],
                ),
              )),
        ));
  }
}

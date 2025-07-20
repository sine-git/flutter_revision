// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraggableAnimalQuizPage extends StatefulWidget {
  const DraggableAnimalQuizPage({super.key});

  @override
  State<DraggableAnimalQuizPage> createState() =>
      _DraggableAnimalQuizPageState();
}

class _DraggableAnimalQuizPageState extends State<DraggableAnimalQuizPage> {
  List<Animal> all = allAnimals;
  List<Animal> land = [];
  List<Animal> air = [];
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
            "Score: $score",
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  buildOrigin(),
            const SizedBox(
              height: 50,
            ),
            buildTargets(context)
          ],
        )));
  }

  /*  Widget buildOrigin() {
    return Stack(
      children: all
          .map(
            (animal) => DraggableWidget(
              data: animal,
            ),
          )
          .toList(),
    );
  } */

  Widget buildTargets(BuildContext context) {
    //return buildTarget(context, text: "Animal", acceptedType: AnimalType.land);

    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          buildTarget(
            context,
            text: "All",
            //acceptedType: AnimalType.land,
            animals: all,
            animalTypes: AnimalType.values,
            onAcceptWithDetails: (details) {
              final animalDetails = details.data;
              updateAnimalPosition(
                  animal: animalDetails.aminal,
                  source: animalDetails.currentList,
                  animalTypes: AnimalType.values,
                  destination: all);
            },
          ),
          const SizedBox(
            width: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildTarget(
                context,
                text: "Animal",
                //acceptedType: AnimalType.land,
                animals: land,
                animalTypes: [AnimalType.land],
                onAcceptWithDetails: (details) {
                  final animalDetails = details.data;
                  updateAnimalPosition(
                      animal: animalDetails.aminal,
                      source: animalDetails.currentList,
                      animalTypes: [AnimalType.land],
                      destination: land);
                },
              ),
              const SizedBox(
                width: 20,
              ),
              buildTarget(
                context,
                text: "Bird",
                //acceptedType: AnimalType.air,
                animals: air,
                animalTypes: [AnimalType.air],
                onAcceptWithDetails: (details) {
                  final animalDetails = details.data;
                  updateAnimalPosition(
                      animal: animalDetails.aminal,
                      source: animalDetails.currentList,
                      animalTypes: [AnimalType.air],
                      destination: air);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTarget(BuildContext context,
          {required String text,
          // required AnimalType acceptedType,
          required List<Animal> animals,
          required List<AnimalType> animalTypes,
          void Function(DragTargetDetails<AnimalPosition>)?
              onAcceptWithDetails}) =>
      CircleAvatar(
        radius: 75,
        backgroundColor: Colors.blue,
        child: DragTarget<AnimalPosition>(
            builder: (context, candidateData, rejectedData) => Stack(
                  children: [
                    ...animals.map((animal) => DraggableWidget(
                        data: AnimalPosition(
                            aminal: animal, currentList: animals))),
                    IgnorePointer(
                      child: Text(
                        text,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
            hitTestBehavior: HitTestBehavior.translucent,
            onWillAcceptWithDetails: (details) {
              print("Tentative de drop");
              return true;
            },
            onAcceptWithDetails: onAcceptWithDetails),
      );

  updateAnimalPosition(
      {required Animal animal,
      required List<Animal> source,
      required List<Animal> destination,
      required List<AnimalType> animalTypes}) {
    print("Given type is ${animal.type} ");
    if (animalTypes.contains((animal.type))) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Type is correct ☺️"),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 1),
      ));
      setState(() {
        score += 50;
        destination.add(animal);
        source.remove(animal);
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Type is incorrect 🔥"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 1)));
    }
  }
}

class DraggableWidget extends StatelessWidget {
  AnimalPosition data;
  DraggableWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    //return Draggable<Animal>(feedback: const SizedBox.shrink(), child: buildImage());
    return LongPressDraggable<AnimalPosition>(
      data: data,
      feedback: buildImage(),
      childWhenDragging: const SizedBox(
        height: 90,
        width: 90,
      ),
      child: buildImage(),
    );
  }

  Widget buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        fit: BoxFit.cover,
        data.aminal.imageUrl,
        height: 90,
        width: 90,
      ),
    );
  }
}

enum AnimalType { land, air }

class AnimalPosition {
  Animal aminal;
  List<Animal> currentList;
  AnimalPosition({
    required this.aminal,
    required this.currentList,
  });
}

class Animal {
  AnimalType type;
  String imageUrl;
  Animal({required this.type, required this.imageUrl});
}

List<Animal> allAnimals = [
  Animal(
    type: AnimalType.land,
    imageUrl:
        "https://i.pinimg.com/736x/5d/96/44/5d9644b5ac65affdc0eca52899c48ffa.jpg", // Tigre
  ),
  Animal(
    type: AnimalType.land,
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg", // Chat
  ),
  Animal(
    type: AnimalType.land,
    imageUrl:
        "https://i.pinimg.com/736x/32/16/56/321656ddf2769899488d46033dc67625.jpg", // Serpent à sonnette
  ),
  Animal(
    type: AnimalType.air,
    imageUrl:
        "https://i.pinimg.com/736x/d6/ff/2a/d6ff2ad5ec1766ebc410b2230c1c583d.jpg", // Aigle vert
  ),
  Animal(
    type: AnimalType.air,
    imageUrl:
        "https://i.pinimg.com/originals/b9/d6/d5/b9d6d573adc7bf0054f035bbf7c41aa7.jpg", // Oiseau bleu
  ),
];

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AnimatedHero extends StatefulWidget {
  const AnimatedHero({super.key});

  @override
  State<AnimatedHero> createState() => _AnimatedHeroState();
}

@immutable
class Person {
  final String name;
  final int age;
  final String emoji;
  const Person({required this.age, required this.name, required this.emoji});
}

const people = [
  Person(name: "Alice", age: 25, emoji: "😀"),
  Person(name: "Bob", age: 30, emoji: "😂"),
  Person(name: "Charlie", age: 22, emoji: "😎"),
  Person(name: "David", age: 35, emoji: "😍"),
  Person(name: "Emma", age: 28, emoji: "🤓"),
  Person(name: "Frank", age: 40, emoji: "😜"),
  Person(name: "Grace", age: 27, emoji: "😊"),
  Person(name: "Henry", age: 33, emoji: "😅"),
  Person(name: "Isabelle", age: 26, emoji: "🥳"),
  Person(name: "Jack", age: 29, emoji: "🤠"),
];

class _AnimatedHeroState extends State<AnimatedHero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("People"),
      ),
      body: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            final Person person = people[index];
            return ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PersonDetailPage(person: person),
                ));
              },
              leading: Hero(
                tag: person.name,
                child: Text(
                  person.emoji,
                  style: const TextStyle(fontSize: 40),
                ),
              ),
              title: Text(person.name),
              subtitle: Text("${person.name} years old."),
              trailing: const Icon(Icons.arrow_right),
            );
          }),
    );
  }
}

class PersonDetailPage extends StatelessWidget {
  Person person;
  PersonDetailPage({
    Key? key,
    required this.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(
            flightShuttleBuilder: (flightContext, animation, flightDirection,
                fromHeroContext, toHeroContext) {
              switch (flightDirection) {
                case HeroFlightDirection.pop:
                  return Material(
                      color: Colors.transparent,
                      child: ScaleTransition(
                          scale: animation.drive(Tween<double>(begin: 0, end: 1)
                              .chain(CurveTween(curve: Curves.fastOutSlowIn))),
                          child: toHeroContext.widget));
                case HeroFlightDirection.push:
                  return Material(
                      color: Colors.transparent, child: fromHeroContext.widget);
              }
              //return const Text("🔥");
            },
            tag: person.name,
            child: Material(
              child: Text(
                "${person.emoji} ",
                style: const TextStyle(fontSize: 30),
              ),
            )),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              person.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "${person.name} years old.",
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

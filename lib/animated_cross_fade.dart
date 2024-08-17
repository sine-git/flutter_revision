import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAnimatedCrossFade extends StatefulWidget {
  const AppAnimatedCrossFade({super.key});

  @override
  State<AppAnimatedCrossFade> createState() => _AppAnimatedCrossFadeState();
}

class _AppAnimatedCrossFadeState extends State<AppAnimatedCrossFade> {
  List<String> imagesUrl = [
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
  ];

  bool _bool = true;
  int index = 0;
  int newIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 100,
            ),
            AnimatedCrossFade(
                duration: Duration(seconds: 1),
                crossFadeState: _bool
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                firstChild: Image.network(
                  imagesUrl[index],
                  height: 400,
                  width: 400,
                ),
                secondChild: Image.network(
                  imagesUrl[newIndex],
                  height: 400,
                  width: 400,
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "${index + 1}/${imagesUrl.length}",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      print("index is ${index} and newIndex is ${newIndex}");
                      setState(() {
                        if (imagesUrl.length <= 1) {
                          index = 0;
                          newIndex = 0;
                        } else if (index == 0) {
                          index = imagesUrl.length - 1;
                          newIndex = 0;
                        } else {
                          index = index - 1;
                          newIndex = index;
                        }
                      });
                    },
                    icon: Icon(Icons.arrow_back)),
                SizedBox(width: 20),
                IconButton(
                    onPressed: () {
                      print("index is ${index} and newIndex is ${newIndex}");
                      setState(() {
                        if (imagesUrl.length <= 1) {
                          index = 0;
                          newIndex = 0;
                        } else if (newIndex == imagesUrl.length - 1) {
                          index = newIndex;
                          newIndex = 0;
                        } else {
                          index = newIndex;
                          newIndex += 1;
                        }
                      });
                    },
                    icon: Icon(Icons.arrow_forward))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

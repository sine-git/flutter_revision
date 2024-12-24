import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextButtonWidget extends StatefulWidget {
  const AppTextButtonWidget({
    super.key,
  });

  @override
  State<AppTextButtonWidget> createState() => AppTextButtonWidgetState();
}

class AppTextButtonWidgetState extends State<AppTextButtonWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextButton(
              style: TextButton.styleFrom(),
              onPressed: () {},
              child: const Text(
                "My ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              style: TextButton.styleFrom(),
              onPressed: () {},
              child: const Text(
                "My ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(children: [
                Positioned.fill(
                    child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.blue,
                    Colors.blueAccent,
                    Colors.orange
                  ])),
                )),
                TextButton(
                  style: TextButton.styleFrom(),
                  onPressed: () {},
                  child: const Text(
                    "My ",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

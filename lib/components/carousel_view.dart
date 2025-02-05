// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_revision/green-beauty/pages/home-page/components/page-indicator.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarousseltState();
}

class _CarousseltState extends State<CarouselWidget> {
  final CarouselController _controller = CarouselController();
  int currentPage = 0;
  @override
  void initState() {
    // TODO: implement initState
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PageIndicator(
                      width: 30,
                      height: 30,
                      color: (currentPage == 0) ? Colors.blue : Colors.grey),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: PageIndicator(
                      width: 30,
                      height: 30,
                      color: (currentPage == 1) ? Colors.blue : Colors.grey,
                    ),
                  ),
                  PageIndicator(
                    width: 30,
                    height: 30,
                    color: (currentPage == 2) ? Colors.blue : Colors.grey,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

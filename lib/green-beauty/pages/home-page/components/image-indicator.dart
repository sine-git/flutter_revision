// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_revision/components/carousel_view.dart';
import 'package:flutter_revision/green-beauty/pages/home-page/components/page-indicator.dart';

class ImageIndicator extends StatelessWidget {
  int currentPage;

  int numberOfPage;
  ImageIndicator({
    Key? key,
    required this.currentPage,
    required this.numberOfPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            numberOfPage,
            (index) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: PageIndicator(
                      width: 15,
                      height: 15,
                      color: (currentPage == index)
                          ? Theme.of(context).colorScheme.secondary
                          : Theme.of(context).colorScheme.surface),
                )));
  }
}

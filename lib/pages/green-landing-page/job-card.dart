import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_revision/pages/green-landing-page/footer-button.dart';

class AppJobCardWidget extends StatefulWidget {
  AppJobCardWidget(
      {super.key,
      required this.leadCircleColor,
      required this.backgroundColor,
      required this.bodyTextColor});
  Color leadCircleColor;
  Color backgroundColor;
  Color bodyTextColor;

  @override
  State<AppJobCardWidget> createState() => _AppJobCardWidgetState();
}

class _AppJobCardWidgetState extends State<AppJobCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        width: 300,
        child: Stack(
          children: [
            ColorFiltered(
              colorFilter:
                  const ColorFilter.mode(Color(0xffE2F0E9), BlendMode.color),
              child: Image.asset(
                "assets/images/bank-background.jpg",
                width: 300,
                fit: BoxFit.fill,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                    color: widget.backgroundColor.withOpacity(0.95),
                    borderRadius: BorderRadius.circular(8)),
                width: 300,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: widget.leadCircleColor,
                                  shape: BoxShape.circle),
                              child: Transform.scale(
                                scale: 0.5,
                                child: Image.asset(
                                  fit: BoxFit.fill,
                                  "assets/images/green-bag.png",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tokopedia",
                                    style: TextStyle(
                                        color: widget.bodyTextColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Fulltime",
                                    style: TextStyle(
                                        color: widget.bodyTextColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: const Color(0xFF125A37),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Text(
                            "+14 Applied",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14.0),
                      child: Text(
                        "Product Designer",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: widget.bodyTextColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        "Jakarta, Indonesia",
                        style: TextStyle(
                            fontSize: 12,
                            color: widget.bodyTextColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: FooterButtonWidget(
                              text: "UI Designer",
                              textColor: widget.bodyTextColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: FooterButtonWidget(
                              text: "Product",
                              textColor: widget.bodyTextColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: FooterButtonWidget(
                              text: "Researcer",
                              textColor: widget.bodyTextColor,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

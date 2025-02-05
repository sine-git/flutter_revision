import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          softWrap: true,
          text: TextSpan(
              text: "Unveilling a world of ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Theme.of(context).colorScheme.inverseSurface,
                height: 1.2,
              ),
              children: [
                TextSpan(
                    text: "Beauty & Cosmetic ",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary)),
                const TextSpan(
                  text: "Product",
                )
              ]),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text(
            textAlign: TextAlign.center,
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi.",
            softWrap: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(16),
                        backgroundColor: Theme.of(context).colorScheme.primary),
                    child: Text(
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.surface,
                      ),
                      "Let's get started",
                    )),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("All ready have an account?",
                style: TextStyle(fontWeight: FontWeight.w300)),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: InkWell(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Theme.of(context).colorScheme.secondary,
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w300),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

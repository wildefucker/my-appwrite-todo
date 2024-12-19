import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/animated_icon_button.dart';
import 'auth.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: Colors.black,
        );

    final headlineStyle = Theme.of(context).textTheme.displaySmall?.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        );

    const spacing = 10.0;

    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            bottom: spacing,
            right: spacing,
            child: Row(
              children: [
                AnimatedIconButton(
                  url: 'https://github.com/appwrite/appwrite',
                  assetName: 'assets/github.svg',
                  semanticsLabel: 'GitHub Logo',
                ),
                SizedBox(width: spacing / 2),
                AnimatedIconButton(
                  url: 'https://twitter.com/appwrite_io',
                  assetName: 'assets/twitter.svg',
                  semanticsLabel: 'Twitter Logo',
                ),
                SizedBox(width: spacing / 2),
                AnimatedIconButton(
                  url: 'http://appwrite.io',
                  assetName: 'assets/appwrite.svg',
                  semanticsLabel: 'Appwrite Logo',
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Introducing",
                  style: textStyle,
                ),
              ),
              const SizedBox(height: spacing),
              Center(
                child: Text(
                  "toTooooDoooo",
                  style: headlineStyle,
                ),
              ),
              const SizedBox(height: spacing),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: textStyle,
                  children: [
                    const TextSpan(text: 'A Simple To-do App built with '),
                    WidgetSpan(
                      child: SvgPicture.asset(
                        'assets/appwrite.svg',
                        semanticsLabel: 'Appwrite Logo',
                        height: 30,
                      ),
                    ),
                    const TextSpan(text: ' Appwrite and '),
                    WidgetSpan(
                      child: SvgPicture.asset(
                        'assets/flutter.svg',
                        semanticsLabel: 'Flutter Logo',
                        height: 25,
                      ),
                    ),
                    const TextSpan(text: ' Flutter'),
                  ],
                ),
              ),
              const SizedBox(height: spacing),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Auth()),
                  );
                },
                child: const Text('Get Started'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

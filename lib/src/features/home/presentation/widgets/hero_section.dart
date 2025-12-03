import 'package:flutter/material.dart';
import 'package:portfolio/src/features/home/presentation/widgets/hover_button.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
          children: [
           Text('FLUTTER DEVELOPER',
                style: Theme.of(context).textTheme.bodyLarge,),
           Text('Hello,I am Siddharth',
                style: Theme.of(context).textTheme.bodyLarge,),
                const HoverButton(),// hover button
          ],
        ),
        ),
       Expanded(child: Column(
          children: [
            Image.asset(
              'assets/ME.jpeg',
              height: 250,
              width: 250,
            ),   
          ],
        ),
        ),
      ],
    );
  }
}

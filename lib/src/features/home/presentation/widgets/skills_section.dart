import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('What I Do'),
        SizedBox(height: 20,),
        Material(
          color: Colors.transparent,
          child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            Chip(label: Text('Flutter')),
            Chip(label: Text('Dart')),
            Chip(label: Text('Firebase')),
            Chip(label: Text('C Programming')),
            Chip(label: Text('Python')),
            Chip(label: Text('Git')),
          ],
        ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  const HoverButton({Key? key}) : super(key: key);

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child:  ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: isHovered ? Colors.green : Colors.black,
                foregroundColor: isHovered ? const Color.fromARGB(255, 235, 207, 207) : Colors.white,
              ),
              child: Text('Contact Me',style: Theme.of(context).textTheme.labelLarge,),
            ),
    );
  }
}
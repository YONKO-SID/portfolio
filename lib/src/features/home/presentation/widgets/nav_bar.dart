import 'package:flutter/material.dart';


class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo with fixed size
          Image.asset(
            'assets/sid.png',
            height: 60, //logo sizes
            width: 60,
          ),
           Text(
            'Siddharth',
            style: Theme.of(context).textTheme.displayLarge,
          ),
           Row(
            children: [
              Text('Home',style: Theme.of(context).textTheme.bodyLarge,),
              const SizedBox(width: 30,),
              Text('About',style: Theme.of(context).textTheme.bodyLarge,),
              const SizedBox(width: 30,),
              Text('Skills',style: Theme.of(context).textTheme.bodyLarge,),
              const SizedBox(width: 30,),
              Text('Projects',style: Theme.of(context).textTheme.bodyLarge,),
              const SizedBox(width: 30,),
              Text('Contact',style: Theme.of(context).textTheme.bodyLarge,),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/src/features/home/presentation/widgets/glass_card.dart';
import 'package:portfolio/src/features/home/presentation/widgets/hero_section.dart';
import 'package:portfolio/src/features/home/presentation/widgets/nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NavBar(),
          GlassCard(child: HeroSection(),),
        ],
      ),
    );
  }
}

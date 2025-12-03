import 'package:flutter/material.dart';
import 'package:portfolio/src/features/home/presentation/widgets/footer.dart';
import 'package:portfolio/src/features/home/presentation/widgets/glass_card.dart';
import 'package:portfolio/src/features/home/presentation/widgets/hero_section.dart';
import 'package:portfolio/src/features/home/presentation/widgets/nav_bar.dart';
import 'package:portfolio/src/features/home/presentation/widgets/skills_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/line.gif',
            fit: BoxFit.cover,
          ),
        ),
        const SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NavBar(),
          GlassCard(
            child: Column(
              children: [
                HeroSection(),
              ],
            ),
          ),
          SizedBox(height: 500),
          SkillsSection(),
          Footer(),
        ],
      ),
    ),
      ],
    ),
    );
  }
}

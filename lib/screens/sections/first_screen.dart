import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/responsive.dart';
import '../../widgets/video_hero.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  Widget _textColumn() {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(
          'assets/line.gif', 
        fit: BoxFit.cover,)),
    
     ResponsiveGrid(
      maxContentWidth: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/sid.png', width: 70, height: 70,),
          const SizedBox(height: 24),
          Text(
            'Hello, I’m Siddharth',
            style: GoogleFonts.montserrat(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            'Flutter & Web Developer',
            style: GoogleFonts.montserrat(
              fontSize: 24,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color.fromARGB(255, 218, 111, 103),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            ),
            child: const Text('See my work'),
          ),
        ],
      ),
    ),
    ],
    );
  }

  Widget _mediaColumn() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: const VideoHero(),
        ),
        const SizedBox(height: 16),
        Image.asset('line.gif', width: 120),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 218, 111, 103),
      child: Padding(
         padding: const EdgeInsets.symmetric(vertical: 80),
         child: LayoutBuilder(
           builder: (context, constraints) {
             final isDesktop = constraints.maxWidth > 900;
             return isDesktop
                 ? Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Expanded(flex: 3, child: _textColumn()),
                       const SizedBox(width: 48),
                       Expanded(flex: 2, child: _mediaColumn()),
                     ],
                   )
                 : Column(
                     children: [
                       _textColumn(),
                       const SizedBox(height: 32),
                       _mediaColumn(),
                     ],
                   );
           },
         ),
       ),
    );
  }
}

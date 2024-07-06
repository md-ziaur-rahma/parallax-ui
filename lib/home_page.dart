import 'package:flutter/material.dart';
import 'package:parallaxui/exibition_bottom_sheet.dart';
import 'package:parallaxui/scrollable_exhibition_bottom_sheet.dart';
import 'package:parallaxui/sliding_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 8),
                Header(),
                SizedBox(height: 60),
                SlidingCardsView(),
              ],
            ),
          ),
          // ExhibitionBottomSheet(), //use this or ScrollableExhibitionSheet
          ScrollableExhibitionSheet(), //use this or ScrollableExhibitionSheet
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Text(
        'Parallax Effect',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

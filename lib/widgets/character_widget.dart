import 'package:flutter/material.dart';

import '../models/character.dart';
import '../styleguide.dart';
import '../screens/character_detail_screen.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;
  final PageController pageController;
  final currentPage;
  CharacterWidget({this.character, this.pageController, this.currentPage});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
            transitionDuration: const Duration(
              milliseconds: 350,
            ),
            pageBuilder: (ctx, _, __) => CharacterDetailScreen(
                  character: character,
                )));
      },
      child: AnimatedBuilder(
        animation: pageController,
        builder: (BuildContext ctx, Widget child) {
          double value = 1;
          if (pageController.position.haveDimensions) {
            value = pageController.page - currentPage;
            value = (1 - (value.abs() * 0.6)).clamp(0.0, 1.0);
          }
          return Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipPath(
                    clipper: BackgroundCardClipper(),
                    child: Container(
                      height: screenHeight * 0.6,
                      width: screenWidth * 0.9,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: character.colors,
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Hero(
                tag: "background-image-${character.name}",
                child: Align(
                  alignment: Alignment(0, -0.5),
                  child: Image.asset(
                    character.imagePath,
                    height: screenHeight * 0.55 * value,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48, right: 16, bottom: 34),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      tag: "main-text-${character.name}",
                      child: Material(
                        color: Colors.transparent,
                        child: Container(
                          child: Text(
                            character.name,
                            style: AppTheme.heading,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Tap to Read more',
                      style: AppTheme.subHeading,
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class BackgroundCardClipper extends CustomClipper<Path> {
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;

  @override
  Path getClip(Size size) {
    Path clippedPath = Path();
    double curveDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curveDistance);
    clippedPath.quadraticBezierTo(
        1, size.height - 1, 0 + curveDistance, size.height);
    clippedPath.lineTo(size.width - curveDistance, size.height);
    clippedPath.quadraticBezierTo(size.width + 1, size.height - 1, size.width,
        size.height - curveDistance);
    clippedPath.lineTo(size.width, 0 + curveDistance);
    clippedPath.quadraticBezierTo(size.width - 1, 0,
        size.width - curveDistance - 5, 0 + curveDistance / 3);
    clippedPath.lineTo(curveDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(
        1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return clippedPath;
  }
}

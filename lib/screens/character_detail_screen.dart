import 'package:flutter/material.dart';

import '../models/character.dart';
import '../styleguide.dart';

class CharacterDetailScreen extends StatefulWidget {
  final Character character;
  CharacterDetailScreen({this.character});
  @override
  _CharacterDetailScreenState createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: widget.character.colors,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  padding: const EdgeInsets.only(top: 60, left: 16),
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 40.0,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Hero(
                    tag: "background-image-${widget.character.name}",
                    child: Image.asset(
                      widget.character.imagePath,
                      height: screenHeight * 0.48,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 32.0),
                  child: Hero(
                    tag: "main-text-${widget.character.name}",
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        child: Text(
                          widget.character.name,
                          style: AppTheme.heading,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 32.0, right: 8.0, bottom: 18.0),
                  child: Text(
                    widget.character.description,
                    style: AppTheme.subHeading,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

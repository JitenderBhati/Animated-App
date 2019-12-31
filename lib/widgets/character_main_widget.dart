import 'package:flutter/material.dart';

import '../styleguide.dart';
import '../models/character.dart';
import '../widgets/character_widget.dart';

class CharacterMainWidget extends StatefulWidget {
  @override
  _CharacterMainWidgetState createState() => _CharacterMainWidgetState();
}

class _CharacterMainWidgetState extends State<CharacterMainWidget> {
  PageController _pageController;
  var _currentPage;

  @override
  void initState() {
    _pageController = PageController();
    _currentPage = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(text: "Despicable Me", style: AppTheme.display1),
                TextSpan(text: "\n"),
                TextSpan(text: "Characters", style: AppTheme.display2),
              ],
            ),
          ),
        ),
        Expanded(
          child: PageView(
            controller: _pageController,
            pageSnapping: false,
            children: <Widget>[
              for (var i = 0; i < characters.length; ++i)
                CharacterWidget(
                  character: characters[i],
                  currentPage: i,
                  pageController: _pageController,
                )
            ],
          ),
        )
      ],
    );
  }
}

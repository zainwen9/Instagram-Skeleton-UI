import 'package:flutter/material.dart';
import 'package:instaui/util/exploreGrid.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRect(
          child: Container(
            decoration: BoxDecoration(color: Colors.grey[300],
            borderRadius: BorderRadius.circular(3)),
            padding: EdgeInsets.all(8),
            child: Row(

              children: [
                Icon(Icons.search),
                Container(
                  color: Colors.grey[300],
                  child: Text('Search '),
                ),
              ],
            ),
          ),
        ),
      ),
      body: exploreGrid(),
    );
  }
}

import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  BubbleStories({required this.text});


  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.grey[500],
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: 10,),
          Text(text),
        ],
      ),
    );
  }
}

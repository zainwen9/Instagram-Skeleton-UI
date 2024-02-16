import 'package:flutter/material.dart';

class exploreGrid extends StatelessWidget {
  const exploreGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context,index){
        return Padding(padding: EdgeInsets.all(2),
        child: Container(
          color: Colors.deepPurple[100],
        ),
        );
      },
    );
  }
}

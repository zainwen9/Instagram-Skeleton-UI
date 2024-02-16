import 'package:flutter/material.dart';

class shopGrid extends StatelessWidget {
  const shopGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context,index){
        return Padding(padding: EdgeInsets.all(2),
          child: Container(
            height: 70,
            width: 60,
            color: Colors.pink[100],
          ),
        );
      },
    );
  }
}

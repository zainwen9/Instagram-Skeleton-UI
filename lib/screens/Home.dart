import 'package:flutter/material.dart';
import 'package:instaui/util/User_Post.dart';
import 'package:instaui/util/buubleStories.dart';

class UserHome extends StatelessWidget {
  final List pepole=['Flutter Deviser','UET Taxila','zain_dev_','flutter_works_','zuckerburg','elon musk'];
   UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram'),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            )

          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: pepole.length,
              itemBuilder: (context,index){
                return BubbleStories(text: pepole[index],);
              },
            ),
          ),

          //posts

          Expanded(
            child: ListView.builder(
                itemCount: pepole.length,
                itemBuilder: (context,index){
              return UserPost(name: pepole[index]);
            }),
          )
        ],
      ),
    );
  }
}

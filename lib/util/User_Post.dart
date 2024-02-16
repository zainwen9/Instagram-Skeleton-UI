import 'package:flutter/material.dart';
class UserPost extends StatelessWidget {
  final String name;
   UserPost({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                      height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),

              Icon(Icons.menu),

            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[500],
        ),

        //below the post
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),

        //comments
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text('Liked by ',),
              Text('zain_dev_',style: TextStyle(fontWeight: FontWeight.bold),),
              Text('and ',),
              Text('others',style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        )

      ],
    );
  }
}

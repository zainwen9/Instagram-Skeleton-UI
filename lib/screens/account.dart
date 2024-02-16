import 'package:flutter/material.dart';

class account extends StatelessWidget {
  const account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
              ),
              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '66',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Text('Posts'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '4136',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Text('Followes'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '22',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Text('Following'),
                      ],
                    ),
                  ],
                ),
              ),

              //bio
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('Zain Mehmood |Flutter |Dart',style: TextStyle(fontWeight: FontWeight.bold),)
             ],
           ),
        ),
      ],
    ),
    );
  }
}

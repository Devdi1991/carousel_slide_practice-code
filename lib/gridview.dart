import 'package:flutter/material.dart';

class GreatApp extends StatefulWidget {
  const GreatApp({super.key});

  @override
  State<GreatApp> createState() => _GreatAppState();
}

class _GreatAppState extends State<GreatApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
        centerTitle: true,
        
      ),
      body:GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 15,
        itemBuilder: (context, index) {
          return Container(
            color: (index % 2 == 0) ? Colors. red : Colors.yellow,
            child: Center(child: Text('$index')),
          );
        },
      ),

    );
  }
}


import 'package:card_tabbar_practice_project/tabbarscreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text('Card Widget',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),

        ) ,
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 20,
          shadowColor: Colors.blue,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          clipBehavior: Clip.antiAlias,
          color: Colors.blue,
          borderOnForeground: true,




          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TabBarScreen()));
            },
            child: Container(
              height: 250,
              width: 250,
              child: Image.network("https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            ),
          ),
        ),
      ),
    );
  }
}

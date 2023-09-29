import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            bottom: TabBar(tabs:[
              Tab(
              icon: Icon(Icons.chat),
                text: "Chats",
            ),
              Tab(
                icon: Icon(Icons.update),
                text: "Status",
              ),
                Tab(
                  icon: Icon(Icons.call),
                  text: "Calls",
                )
            ]),

          ),
          body:TabBarView(
              children: [
                Center(child: Image.network('https://www.mindinventory.com/blog/wp-content/uploads/2022/10/flutter-3.png'),),


                Center(child:Image(image:AssetImage("assets/images/vecteezy_majestic-tiger-png-image_22794430_238.png") ) ),
                
                Center(child:Image(image:AssetImage("assets/images/cow-1193186_1280.jpg") ) ),

              ]) ,

        )
    );


  }
}

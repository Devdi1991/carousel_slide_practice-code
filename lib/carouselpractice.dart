import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FirstApp extends StatefulWidget {
  const FirstApp({super.key});

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  List<Widget>ListImage=[
    Image.network('https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png '),
    Image.network('https://www.mindinventory.com/blog/wp-content/uploads/2022/10/flutter-3.png'),
    Image.network('https://www.zdnet.com/a/img/resize/ba1b1ab92085d777ab5e313b34c66a94b7aa1236/2023/06/05/79a43eb8-ce38-488c-8cc0-e04699aaca7f/bing.jpg?auto=webp&width=1280'),
    Image.network('https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png'),
    Image.network('https://appinventiv.com/wp-content/uploads/sites/1/2018/10/Flutter-for-Cross-Platform-Mobile-App-Development-Pros-Cons.jpg'),
    Image.network ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAtocB6eYKSDF4cBza1O6AHQgg5qbe9NqthDXaS2qqURoIdIikt9fzbpRfEbcqsuBDR2s&usqp=CAU'),
    Image.network('https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png'),

  ];
  /*function(int index){

    for(int i=0;i<=ListImage.length;i++);
    return ListImage[index];

  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Slide'),
        centerTitle: true,
      ),
      body: CarouselSlider(items: [
        Container(
        height: 400,
        width: 300,
        clipBehavior: Clip.antiAlias,
        child: ListImage[0],
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),

      ),
        Container(
          height: 400,
          width: 300,
          clipBehavior: Clip.antiAlias,
          child: ListImage[1],
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),

        ),
        Container(
          height: 400,
          width: 300,
          clipBehavior: Clip.antiAlias,
          child: ListImage[2],
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),

        ),
        Container(
          height: 400,
          width: 300,
          clipBehavior: Clip.antiAlias,
          child: ListImage[3],
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),

        ),
        Container(
          height: 400,
          width: 300,
          clipBehavior: Clip.antiAlias,
          child: ListImage[4],
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),

        ),
        Container(
          height: 400,
          width: 300,
          clipBehavior: Clip.antiAlias,
          child: ListImage[5],
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),

        ),
      ],
          options:CarouselOptions(
            height: 500,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            pauseAutoPlayOnTouch: true,
            autoPlayCurve: Curves.bounceInOut,
            scrollDirection: Axis.horizontal,
            enlargeCenterPage: true,
            aspectRatio: 16/9,
            enlargeFactor: 0.8




          ) ),

    );
  }
}

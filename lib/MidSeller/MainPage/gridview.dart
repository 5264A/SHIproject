import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List imageList = [
    {"id": 1, "image_path": 'assets/news.gif'},
    {"id": 2, "image_path": 'assets/download.gif'},

  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return
      Column(children: [
        Stack(

          children: [
            InkWell(
              child: CarouselSlider(
                items: imageList
                    .map(
                      (item) => Container(
                        margin: EdgeInsets.only(top: 1,bottom: 1),
                        height:400,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                         // border: Border.all(color: Colors.lightGreen),
                          borderRadius: BorderRadius.circular(12),
                        ),

                        child: Image.asset(

                        item['image_path'],
                          fit: BoxFit.cover,


                      ),
                      ),
                )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
              onTap: () {
                print(currentIndex);
                if(currentIndex==1){
                  print('Hello WOlrd');
                }
              },
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: currentIndex == entry.key ? 17 : 7,
                      height: 7.0,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key
                              ? Colors.red
                              : Colors.teal),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ]);
  }
}
/*  Center(child: Container(

            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BigText(text: '-----Explore-Offers-----'),
                  SizedBox(height: 10,),
                ]
            ),),),
          SizedBox(height: 5,),
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 30, right: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BigText(text: 'OFFERS', size: 25, color: Colors.black,),
                  SizedBox(height: 10,),
                ]
            ),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.lightBlue,
            ),
          ),
          SizedBox(height: 5,),
          Center(
            child: Container(

              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BigText(text: '-----Wool-Types-----'),
                    SizedBox(height: 10,),
                  ]
              ),),),
          SizedBox(height: 5,),
          //GRID_VIEW-----------------------------


           bottomNavigationBar: CurvedNavigationBar(

          backgroundColor: Colors.white,
          color: Colors.lightBlue,

          animationDuration: Duration(milliseconds:200),
         // height: 50,
          items: const <Widget>[

            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),


         ],
          onTap: (int ) {

          },
        ),

*/
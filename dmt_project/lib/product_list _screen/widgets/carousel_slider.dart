
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Carousalslider extends StatelessWidget {
    List<String>party=["7.jpg","8.jpg"];
   Carousalslider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CarouselSlider(
          items: [
            SizedBox(
              height: 100,
              width: 350,
              child: Container(
                alignment: Alignment.center,
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/8.jpg'
                        ),
                      fit: BoxFit.cover,
            
                  ),
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 170,
    
            aspectRatio: 16/9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            ///  onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          )
      ),
    );
  }
}

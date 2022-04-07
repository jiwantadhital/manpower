import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider(
                items: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/car.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/30.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                    
              
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/car.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                    
                
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/30.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

            
            ],
                
                   
                options: CarouselOptions(
                  height: 100.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 1,
                ),
            ),
          ),
        ],
      );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:food_ordering/Application/pizaa.dart';

import 'FoodOffer.dart';
import 'burger.dart';
import 'kebab.dart';
class Favourt extends StatefulWidget {
  const Favourt({super.key});

  @override
  State<Favourt> createState() => _FavourtState();
}

class _FavourtState extends State<Favourt> {
  List images = [
    "assets/images/Boston Burger.png"
    , "assets/images/Traditional Kebab .png",
    "assets/images/StarFish.png",
    "assets/images/pizzaItaliano.png",
  ];

  List text = [
    "Pizza Italiano",
    "Traditional Kebab ",
    "Star Fish",
    "Boston Burger’s"
  ];
  List <Widget> containerStar = [
    Container(
      width: 60,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10)),

      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(children: [
          Icon(Icons.star, size: 20),
          Text("4/5"),
        ]),
      ),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Center(child: Stack(children:
                [
                  Image.asset("assets/images/Star 2.png"),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 35),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("My", style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                        Text("Favourite", style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                        Text("Restaurants", style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ))
                      ],
                    ),
                  )
                ])),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: 500,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: InkWell(
                              onTap: (){
                                if(index ==0)
                                 {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                                     return Pizza();
                                   },));
                                 }
                                if(index ==1)
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return Kebab();
                                  },));
                                }

                                if(index ==3)
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                     return Burger();
                                  },));
                                }
                              },
                              child: Image.asset(images[index])),
                          title: Text(text[index]),
                          trailing: containerStar[index % containerStar.length],
                          subtitle: _Divider(),
                        ),
                      );
                    },
                  ),


                ),
              ),


            ],
          ),
        ),
      ),
      // bottomNavigationBar: bootomNavBar(context),

        bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.heart_broken_outlined, title: 'Heart'),
            TabItem(icon: Icons.category_outlined, title: 'catogery'),
            TabItem(icon: Icons.add_alert_rounded, title: 'alarm'),
            TabItem(icon: Icons.person, title: 'Profile'),
          ],
          onTap: (int i) {
            if(i ==0){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>   FoodOfer()),

              );
            }

          },
        )

    );
  }

  Container _Divider() {
    return Container(
      padding: EdgeInsets.only(top: 25),

      width: 350,
      height: 5,
      child: Divider(
        height: 3,
      ),


    );
  }


  Row _bodyImage(String img, String text, Color color) {
    return Row(
      children: [
        Image.asset(img),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text(text, style: TextStyle(fontSize: 15)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, top: 40),
          child: Container(
            width: 70,
            height: 20,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(children: [
                Icon(Icons.star, size: 20),
                Text("4/5"),
              ]),
            ),
          ),
        ),

      ],
    );
  }

/*  ConvexAppBar bootomNavBar(BuildContext context) {
    return ConvexAppBar(
      items: [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.favorite_outline_sharp, title: 'Heart',),
        TabItem(icon: Icons.category_outlined, title: 'catogery'),
        TabItem(icon: Icons.add_alert_rounded, title: 'alarm'),
        TabItem(icon: Icons.person, title: 'Profile'),
      ],
      onTap: (int i) {
      switch(i) {
        case 0:
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FoodOfer()),

          );
        case 2:
          break;
        case 3:
          break;
        case 4:
          break;
      }
      },
    );
  }*/


}

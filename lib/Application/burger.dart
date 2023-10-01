import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Burger extends StatefulWidget {
  const Burger({super.key});

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> with SingleTickerProviderStateMixin{
        TabController? myControler;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myControler =  new TabController(length: 4, vsync: this);
  }
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(

          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.shopping_cart_outlined,size: 40,color: Colors.black),
            ),
          ],
          title:
              Center(
                child: Text(
                    textAlign: TextAlign.center,
                    "Burgers",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

          ),
          bottom: TabBar(
            indicatorColor: Colors.red,
            labelColor: Colors.redAccent,
            controller: myControler,
            isScrollable: true,
            tabs: [
              Tab(text: "All Items",),
              Tab(text: "New Items",),
              Tab(text: "Recommanded",),
              Tab(text: "Special",),
            ],

          ),
        ),
        body: Center(
          child: Container(
            child: TabBarView(
                controller: myControler,
                children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 30),
                   child: Column(

                        children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
                                width: 450,
                                height: 250,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   Image.asset("assets/images/burgMax.png",
                                         ),

                                    Expanded(
                                      child: Column(
                                      //  crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Image.asset("assets/images/b2.png"),
                                          Image.asset("assets/images/b3.png"),
                                          Image.asset("assets/images/b4.png"),
                                          Image.asset("assets/images/b5.png"),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                        ),
                         SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Container(
                                  width: 250,
                                  height: 70,

                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Cheese Burger ",
                                          style: TextStyle(fontWeight: FontWeight.bold
                                      ,fontSize:
                                          22)),
                                      Text("Whopper",
                                          style: TextStyle(fontWeight: FontWeight.bold
                                              ,fontSize: 22))
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 30,),
                              Icon(Icons.favorite_outline_sharp,color: Colors.red,size: 40),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Container(
                                  width: 280,
                                    height: 40,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Ham, Cheddar Cheese, Onion, Cornichon,",
                                      textAlign: TextAlign.start,),
                                      Text("Solad, Tomato",
                                        textAlign: TextAlign.start,),

                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text("\$8.99",style:
                                TextStyle(fontSize: 22,
                                    fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          SizedBox(height: 40,),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child:  InkWell(
                                            onTap: (){
                                              print("hbjdhfd");
                                            },
                                            child: Container(
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(
                                                      size: 25,
                                                      Icons.remove,color: Colors.black)),
                                              height: 25,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(5.0)
                                              ),),
                                          ),

                                        ),
                                        SizedBox(width: 20,),
                                        Text("1",style: TextStyle(fontWeight: FontWeight.bold
                                        ,fontSize: 20),),
                                        SizedBox(width: 5,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child:  InkWell(
                                            onTap: (){
                                              print("hbjdhfd");
                                            },
                                            child: Container(
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(
                                                      size: 25,
                                                      Icons.add,color: Colors.black)),
                                              height: 25,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(5.0)
                                              ),),
                                          ),

                                        ),

                                      ],
                                    ),

                                  ),
                                  SizedBox(width: 45,),
                                  Container(
                                    width: 150,
                                    height: 50,

                                    decoration: BoxDecoration(
                                        color: Colors.pinkAccent,
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(1),topRight: Radius.circular(20),
                                       bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20),)
                                    ),
                                    child: Center(
                                      child: Text("Add to Cart ",style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white
                                      )),
                                    ),
                                  )

                                ],
                              )

                        ],

                      ),
                 ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Wait The New Items",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Wait The Recommanded",style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.red
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Wait The Spetial Items",style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.purpleAccent
                        ),)
                      ],
                    ),
                  ),
                ],
            ),
          ),
        ),

      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pizza extends StatefulWidget {
  const Pizza({super.key});

  @override
  State<Pizza> createState() => _PizzaState();
}

class _PizzaState extends State<Pizza>with SingleTickerProviderStateMixin {
  TabController? myControler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myControler = new TabController(length: 4, vsync: this);
  }
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title:
              Center(
                child: Text(

                    textAlign: TextAlign.center,
                     "Pizza",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Icon(Icons.shopping_cart_outlined,size: 35,color: Colors.black),
            ),
          ],
          bottom: TabBar(
            controller: myControler,
            indicatorColor: Colors.red,
            labelColor: Colors.red,
            isScrollable: true,
            tabs: [
            Text("All Items"),
            Text("New Items"),
            Tab(text: "Recommanded",),
            Text("Special"),

          ],

          ),
        ),
        body:
         Container(
           child: TabBarView(
             controller: myControler,

              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        width: 400,
                         height: 310,
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Image.asset("assets/images/pizzaMax.png"),
                            ),
                             SizedBox(width: 50,),
                             Padding(
                               padding: const EdgeInsets.only(top: 45),
                               child: Column(
                                 children: [
                                   Image.asset("assets/images/p1.png"),
                                   SizedBox(height: 5,),
                                   Image.asset("assets/images/p2.png"),
                                   SizedBox(height: 5,),
                                   Image.asset("assets/images/p3.png"),
                                   SizedBox(height: 8,),
                                   Image.asset("assets/images/p4.png"),
                                 ],
                               ),
                             )
                           ],
                         ),

                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            width: 250,
                            height: 100,
                            child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20,top: 10),
                                  child: Text("Margarita Pepperoni",style: TextStyle(
                                    fontSize: 20,fontWeight: FontWeight.bold
                                  )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text("Pizza",style: TextStyle(
                                      fontSize: 20,fontWeight: FontWeight.bold
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 55,),
                        Icon(Icons.favorite_outline_sharp,size: 40,color: Colors.red),
                      ],
                    ),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Text("Bread, Pepperoni, Cheese, Parsil"),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Text("\$12.99",style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 25)),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30,top: 20),
                          child: Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                              borderRadius: BorderRadius.circular(10.0)
                            ),

                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 40,
                                    height: 30,
                                    color: Colors.white,
                                    child: Icon(Icons.remove,size: 30),

                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text("1",style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                                )),
                                SizedBox(width: 5,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 40,
                                    height: 30,
                                    color: Colors.white,
                                    child: Icon(Icons.add,size: 30),

                                  ),
                                ),
                              ],
                            ),

                          ),
                        ),
                        SizedBox(width: 45,),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: 150,
                            height: 50,
                            child: Center(
                              child: Text("Add to Cart",style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                              )),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                              bottomRight:Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(2) )
                            ),
                          ),
                        )
                      ],
                    ),


                  ],

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
         )
      ),
    );
  }
}

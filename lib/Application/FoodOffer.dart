import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'Favourt.dart';

class FoodOfer extends StatefulWidget {
  const FoodOfer({super.key});

  @override
  State<FoodOfer> createState() => _FoodOferState();
}

class _FoodOferState extends State<FoodOfer> {
  List images =[
    "assets/images/vegan.png",
    "assets/images/SeeFood (2).png",
    "assets/images/kebabs.png",
    "assets/images/FastFood.png",
  ];

  List text =[
    "Vegan",
   "See Food",
    "Kebab",
    "Fast Food"
  ];



  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
     actions: [
       Padding(
         padding: const EdgeInsets.only(right: 20),
         child: Image.asset("assets/images/imgAppbar.png"),
       ),

     ],
     title: Column(
          children: [
            Image.asset("assets/images/Food Offer.png"),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on_outlined,size: 20),
                Text("Paris, France",style: TextStyle(fontSize: 15)),
                Icon(Icons.arrow_drop_down_sharp,size: 20),
              ],
            ),

          ],
        ),

      ),
     drawer: Drawer(),
      body:
         SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.only(left: 10),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                       Text("Delicious Food?"),
                       Text("Go Ahead..."),

                  /*IconButton(
                      color: Colors.blue,
                      onPressed: (){
                        showSearch(context: context, delegate: SearchData());
                      }, icon: Icon(Icons.search)),*/
                  ElevatedButton(

                    onPressed: () {  },
                    child: Container(
                       child: Row(
                         children: [
                           Icon(Icons.search,size: 25,),
                           SizedBox(width: 30,),
                           Text("Search for your favourite food",style: TextStyle(
                             color: Colors.grey
                           ),),
                           SizedBox(width: 30,),
                           Icon(Icons.add_road,size: 25),

                         ],
                       ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Center(
                    child: Container(
                      width: 280,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20.0),
                      ),

                      child: Center(child: Text("30% Off on your first purchase")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 20),
                    child: Row(
                      children: [
                        _TypeFood("assets/images/Burger.png","Burger"),
                        SizedBox(width: 30,),
                        _TypeFood("assets/images/Piza.png","Pizza"),
                        SizedBox(width: 30,),
                        _TypeFood("assets/images/Pasta.png","Pasta"),


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 15),
                    child: Row(
                      children: [
                        _TypeFood("assets/images/Sandwitch.png","Sandwich"),
                        SizedBox(width: 30,),
                        _TypeFood("assets/images/Freis.png","Freis"),
                        SizedBox(width: 30,),
                        _TypeFood("assets/images/Kebab.png","Kebab"),


                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Center(child: Text("See More....",style: TextStyle(color: Colors.blue),)),
                  SizedBox(height: 4,),
                  Center(
                    child: Container(
                      width: 110,
                        height: 1,
                        child: Divider(color:Colors.blue ,height: 1)),
                  ),
                 Center(
                   child: Container(
                     height: 60,
                     width: 300,
                     child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: images.length,
                      ),
                       itemCount: images.length,
                       itemBuilder: (context, index) {
                        return  Image.asset(images[index]);
                      },),
                   ),
                 ),
                  Center(
                    child: Container(
                      height: 50,
                      width: 300,
                      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: text.length,
                      ),
                        itemCount: text.length,
                        itemBuilder: (context, index) {
                          return Center(child: Text(text[index]));
                        },),
                    ),
                  ),

                ],


              ),
           ),
         ),
        bottomNavigationBar: bootomNavBar()
    );
  }

  ConvexAppBar bootomNavBar() {
    int selectIndex = 0;
    return ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.heart_broken_outlined, title: 'Heart'),
          TabItem(icon: Icons.category_outlined, title: 'catogery'),
          TabItem(icon: Icons.add_alert_rounded, title: 'alarm'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
      onTap: (int i) {
         if(i == 1){
           Navigator.push(
               context,
               MaterialPageRoute(builder: (context) =>   Favourt()));
         }
         selectIndex=i;
      },
      );
  }

  Stack _TypeFood(String img, String text) {
    return Stack(children:
                   [
                     Image.asset(img),
                     Padding(
                       padding: const EdgeInsets.only(top: 5,left: 7),
                       child: Text(text,style: TextStyle(
                         fontSize: 11,
                       )),
                     ),
                   ],);
  }
}

class SearchData extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){}, icon:Icon( Icons.add_road)),
    ];

  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () {
    }, icon: Icon(Icons.arrow_back));

  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null!;
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   return Text("");
  }

}




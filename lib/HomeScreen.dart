import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(child: Text("Explore",style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 32 , color: Colors.black),)),
        automaticallyImplyLeading: false,
        leading: Image.asset('assets/images/Hamburger.png'),
        actions: [Icon(Icons.shopping_bag)],
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30 ,left: 20),
            width: 340,
          child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Looking for shoes",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15), // Rounded border
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15), // Same radius when focused
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
              ),
            ),
        ),
        Container(
              margin: EdgeInsets.only(top: 32 , left: 360 ),
              height: 52,
              width: 52,
              child: Image.asset('assets/images/Group2.png'),
            ),
        Container(
          margin: EdgeInsets.only(top: 105 ,left: 20),
          height: 19,
          width: 120,
          child: Text("Select Category" , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600,color: Colors.black),),
        ),
        Container(
          margin: EdgeInsets.only(top: 145 ,left: 20),
          height: 19,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 70,
                  height: 20,
                  color: Colors.white10,
                  child: Center(child: Text("All Shoes")),
                ),
                Container(
                  width: 70,
                  height: 20,
                  color: Colors.white10,
                  child: Center(child: Text("Outdoor")),
                ),
                Container(
                  width: 70,
                  height: 20,
                  color: Colors.white10,
                  child: Center(child: Text("Tennis")),
                ),
                Container(
                  width: 70,
                  height: 20,
                  color: Colors.white10,
                  child: Center(child: Text("Sports")),
                ),
                Container(
                  width: 70,
                  height: 20,
                  color: Colors.white10,
                  child: Center(child: Text("Cricket")),
                ),
                Container(
                  width: 70,
                  height: 20,
                  color: Colors.white10,
                  child: Center(child: Text("Football")),
                ),
                Container(
                  width: 70,
                  height: 20,
                  color: Colors.white10,
                  child: Center(child: Text("Fromal")),
                ),
                Container(
                  width: 70,
                  height: 20,
                  color: Colors.white10,
                  child: Center(child: Text("Party")),
                ),
                Container(
                  width: 70,
                  height: 20,
                  color: Colors.white10,
                  child: Center(child: Text("Casual")),
                )
              ],
            ),
          )
        ),
        Container(
          margin: EdgeInsets.only(top: 180 ,left: 20),
          height: 19,
          width: 120,
          child: Text("Popular Shoes" , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w400,color: Colors.black),),
        ),
        Container(
          margin: EdgeInsets.only(top: 185 ,left: 350),
          height: 19,
          width: 120,
          child: Text("See All" , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400,color: Colors.blue),),
        ),
        Container(
          margin: EdgeInsets.only(top: 220 ,left: 20),
          height: 230,
          width: 180,
          child: Stack(
            children: [
              Container(
                color: Colors.white12,
                margin: EdgeInsets.only(top: 10,left: 10),
                height: 10,
                width: 10,
                child: Image.asset('assets/images/heart.png'),
              ),
              Container(
                color: Colors.white12,
                margin: EdgeInsets.only(top: 0,left: 0),
                height: 120,
                width: 120,
                child: Image.asset('assets/images/Hero.png'),
              ),
              Container(
                color: Colors.white12,
                margin: EdgeInsets.only(top: 130,left: 10),
                height: 120,
                width: 120,
                child: Text("BEST SELLER" , style: TextStyle(color: Colors.blue , fontSize: 12),),
              ),
              Container(
                color: Colors.white12,
                margin: EdgeInsets.only(top: 145,left: 10),
                height: 120,
                width: 120,
                child: Text("Nike Jordan" , style: TextStyle(color: Colors.black , fontSize: 12 ,fontWeight: FontWeight.w300),),
              ),
              Container(
                color: Colors.white12,
                margin: EdgeInsets.only(top: 170,left: 10),
                height: 120,
                width: 120,
                child: Text("\$302" , style: TextStyle(color: Colors.black , fontSize: 12 ,fontWeight: FontWeight.w700),),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10) ,bottomRight: Radius.circular(10) )
                  ),
                  height: 20,
                  width: 20,
                  child: Center(child: Icon(Icons.add , color: Colors.white , size: 20,),),
                ),
              )
              
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 220 ,left: 220),
          height: 230,
          width: 180,
          child: Stack(
            children: [
              Container(
                color: Colors.white12,
                margin: EdgeInsets.only(top: 10,left: 10),
                height: 10,
                width: 10,
                child: Image.asset('assets/images/heart.png'),
              ),
              Container(
                color: Colors.white12,
                margin: EdgeInsets.only(top: 0,left: 0),
                height: 120,
                width: 120,
                child: Image.asset('assets/images/Hero.png'),
              ),
              Container(
                color: Colors.white12,
                margin: EdgeInsets.only(top: 130,left: 10),
                height: 120,
                width: 120,
                child: Text("BEST SELLER" , style: TextStyle(color: Colors.blue , fontSize: 12),),
              ),
              Container(
                color: Colors.white12,
                margin: EdgeInsets.only(top: 145,left: 10),
                height: 120,
                width: 120,
                child: Text("Nike Air Max" , style: TextStyle(color: Colors.black , fontSize: 12 ,fontWeight: FontWeight.w300),),
              ),
              Container(
                color: Colors.white12,
                margin: EdgeInsets.only(top: 170,left: 10),
                height: 120,
                width: 120,
                child: Text("\$752" , style: TextStyle(color: Colors.black , fontSize: 12 ,fontWeight: FontWeight.w700),),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10) ,bottomRight: Radius.circular(10) )
                  ),
                  height: 20,
                  width: 20,
                  child: Center(child: Icon(Icons.add , color: Colors.white , size: 20,),),
                ),
              )
              
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 480 ,left: 20),
          height: 19,
          width: 120,
          child: Text("New Arrivals" , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w400,color: Colors.black),),
        ),
        Container(
          margin: EdgeInsets.only(top: 480 ,left: 350),
          height: 19,
          width: 120,
          child: Text("See All" , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400,color: Colors.blue),),
        ),
        Container(
          margin: EdgeInsets.only(top: 530 ,left: 40),
          height: 19,
          width: 100,
          child: Text("Suumer Sale" , style: TextStyle(fontWeight: FontWeight.w300 , color: Colors.black , fontSize: 12)),
        ),
        Container(
          margin: EdgeInsets.only(top: 553 ,left: 40),
          height: 50,
          width: 300,
          child: Text("15% OFF" , style: TextStyle(fontWeight: FontWeight.w800 , color: Colors.purple , fontSize: 32)),
        ),
        Container(
          margin: EdgeInsets.only(top: 530 ,left: 200),
          height: 50,
          width: 50,
          child: Image.asset('assets/images/Misc_06.png')
        ),
        Container(
          margin: EdgeInsets.only(top: 530 ,left: 230),
          height: 99,
          width: 112,
          child: Image.asset('assets/images/Nike.png')
        ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.blue,
        color: Colors.white,
        height: 65,
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.heart_broken,
            size: 35,
            color: Colors.blue,
          ),
          Icon(
            Icons.shopping_bag,
            size: 35,
            color: Colors.blue,
          ),
          Icon(
            Icons.ring_volume,
            size: 35,
            color: Colors.blue,
          ),
          
          Icon(
            Icons.person_4_outlined,
            size: 35,
            color: Colors.blue,
          )
        ],
        onTap: (index) {
          _pageController.animateToPage(index,
              duration: Duration(seconds: 1), curve: Curves.easeOut);
        },
      ),
    );
  }
}
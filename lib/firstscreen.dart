import 'package:flutter/material.dart';
import 'package:nike_sneaker_store/HomeScreen.dart';

class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({super.key});

  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          
          children: [
            Container(
              margin: EdgeInsets.only(top: 120 , left: 90),
              height: 90,
              width: 219,
              child: Center(child: Column(
                children: [
                  Text("WELCOME TO" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w900 , color: Colors.white , ),),
                  Text("NIKE" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w900 , color: Colors.white , ),),
                ],
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 240 , left: 130),
              height: 18,
              width: 134,
              child: Image.asset('assets/images/Vector1.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: 600 , left: 20 ),
              height: 54,
              width: 90,
              child: Image.asset('assets/images/Group1.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: 560 , left: 280 ),
              height: 54,
              width: 90,
              child: Image.asset('assets/images/Highlight_10.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: 400 , left: 50 ),
              height: 45,
              width: 45,
              child: Image.asset('assets/images/Misc_04.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: 200 , left: 150),
              height: 420,
              width: 560,
              child: Transform.rotate(angle: 0,child: Image.asset('assets/images/image3.png',height: 420,width: 560)),
            ),

            Container(
              margin: EdgeInsets.only(top: 436),
              height: 166,
              width: 482,
              child: Image.asset('assets/images/Vector.png', height: 166,width: 482,),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreen(),));
              },
              child: Container(
                margin: EdgeInsets.only(top: 730 , left:45),
                height: 50,
                width: 335,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
                child: Center(child: Text("Get Started" , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w600 , color: Colors.black),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
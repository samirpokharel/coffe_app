import 'package:coffe_app/detail_page.dart';
import 'package:flutter/material.dart';

class Coffee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: size.height,
            width: size.width,
            child: Image.asset(
              "images/bg.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff100702),
                  Color(0xff100702).withOpacity(.4),
                ],
              ),
            ),
            child: Image.asset("images/coffee.png"),
          ),
          Positioned(
            top: 50,
            child: Text(
              "ITS GREAT DAY FOR",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Color(0xffB98C53),
              ),
            ),
          ),
          Positioned(
            top: 80,
            child: Text(
              "Coffee",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            child: SizedBox(
              width: 150,
              height: 60,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                color: Color(0xffB98C53),
                child: Text(
                  "Order Now",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_)=> DetailPage(),),
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}

import 'package:coffe_app/detail_page.dart';
import 'package:flutter/material.dart';

class Coffee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.height,
            width: size.height,
            child: Image.asset("images/bg.jpg", fit: BoxFit.cover),
          ),
          Container(
            padding: EdgeInsets.all(40),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor.withOpacity(.4)
                ],
              ),
            ),
            child: Image.asset('images/coffee.png'),
          ),
          Positioned(
            top: 70,
            child: Text(
              "ITS GREATE DAY FOR",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xffB98C53),
              ),
            ),
          ),
          Positioned(
            top: 95,
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
              height: 60,
              width: 150,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Color(0xffB98C53),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailPage(),
                  ),
                ),
                child: Text(
                  "Order",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

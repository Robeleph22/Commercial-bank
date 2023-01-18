import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width:double.maxFinite,
      height: 180,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("Icons/dottedworldmap.jpg"),fit: BoxFit.fill,colorFilter: ColorFilter.mode(Color.fromRGBO(129, 0, 183, 1), BlendMode.darken)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Row(
              children: [
                SizedBox(height: 120, width: 80,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 55.0),
                      child: Image.asset('Icons/CBE.png'),
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0,right: 25),
                        child: Text("Commercial Bank Of Ethiopia",
                            style: TextStyle(color: Color.fromRGBO(245, 190, 108, 1, ),fontSize: 14 ,fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 5,),
                      Column(
                        children: [
                          Text("The  Bank  You  Can  Always  Rely  On !",
                              style: TextStyle(color: Color.fromRGBO(238, 193, 126, 2,),fontSize: 12 )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

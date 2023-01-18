import 'package:flutter/material.dart';

class Dashboarddetail extends StatefulWidget {
  const Dashboarddetail({Key? key}) : super(key: key);

  @override
  State<Dashboarddetail> createState() => _DashboarddetailState();
}

class _DashboarddetailState extends State<Dashboarddetail> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SafeArea(
        child: Container(
          height:200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage("Icons/vector-vector-dotted-world-map-illustration-ai-svg.jpg"),fit: BoxFit.fill,colorFilter: ColorFilter.mode(Color.fromRGBO(27, 26, 31, 1), BlendMode.darken) ),
          ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 15,top: 10),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 60,
                          width: 60,
                          child: Image.asset("Icons/CBE.png")),
                      SizedBox(width: 5,),
                      Container(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Commercial Bank Of Ethiopia",
                                style: TextStyle(color: Color.fromRGBO(245, 190, 108, 1, ),fontSize: 16 ,fontWeight: FontWeight.bold)),
                            SizedBox(height: 5,),
                            Text("The  Bank  You  Can  Always  Rely  On!",
                                style: TextStyle(color: Color.fromRGBO(238, 193, 126, 1,),fontSize: 14)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text("Balance",
                    style: TextStyle(color: Colors.white,fontSize: 20 ,fontWeight: FontWeight.bold)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //TODO //Balance
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(text: "********  ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25)),
                          TextSpan(text: "Birr",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28)),
                        ]
                    )
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.remove_red_eye,color: Colors.white70,))
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //TODO //Account
                    Text("Saving - ",style: TextStyle(color: Color.fromRGBO(245, 190, 108, 1),fontSize: 18)),
                    Text("1000*****4521",style: TextStyle(color: Color.fromRGBO(245, 190, 108, 1,),fontSize: 18)),
                  ],
                ),

                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //TODO //Date
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: RichText(text: TextSpan(
                            children: [
                              TextSpan(text: "Jan 7 2023  ",style: TextStyle(color: Colors.white70,fontSize: 15,fontWeight: FontWeight.bold)),
                              TextSpan(text: "2:42:35 AM",style: TextStyle(color: Colors.white70,fontSize: 15,fontWeight: FontWeight.bold)),
                            ]
                        )
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
    );
  }
}

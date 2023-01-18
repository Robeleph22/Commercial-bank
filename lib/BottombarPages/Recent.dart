import 'package:flutter/material.dart';

import 'HomePage.dart';

class Recent extends StatefulWidget {
  const Recent({Key? key}) : super(key: key);

  @override
  State<Recent> createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
            children: [
              Stack(
                children: [
                  IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },icon: Icon(Icons.arrow_back,color: Colors.purple,)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      TextButton(onPressed: () {},
                        child: Text('አማ',style: TextStyle(color: Colors.purple,
                            fontSize: 17,fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.refresh,size: 28),color: Colors.purple,)
                    ],
                  )
                ],
              ),
              SizedBox(height: 35,),

              Text("Recent Transactions",style: TextStyle(color: Colors.purple.shade800,fontSize: 20),),

            ]
        ),
      ),
    );
  }
}

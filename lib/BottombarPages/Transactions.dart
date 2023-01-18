import 'package:commercialbank/BottombarPages/Dashboard.dart';
import 'package:commercialbank/BottombarPages/HomePage.dart';
import 'package:flutter/material.dart';

import '../Utilitys/Dashboarddetail.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
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
            SizedBox(height: 5,),
            
            Text("Transactions",style: TextStyle(color: Colors.purple,fontSize: 16,fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),

            Column(
              children: [
                Dashboarddetail(),
              ],
            ),

            SizedBox(height: 10,),

            Container(
              height: 10,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.greenAccent.shade400
              ),
              child: Center(
                child: Text(""),
              ),
            ),



            SizedBox(height: 10,),

            Column(
              children: [
                Align(alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text("Recents",style: TextStyle(color: Colors.purple,fontSize: 20),),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}


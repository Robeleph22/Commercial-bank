import 'package:commercialbank/TransferOptions/Transfer%20to%20CBE%20Acc%20Pages/Reciverdetial.dart';
import 'package:flutter/material.dart';

import '../../BottombarPages/HomePage.dart';

class AccountNoPage extends StatefulWidget {
  const AccountNoPage({Key? key}) : super(key: key);

  @override
  State<AccountNoPage> createState() => _AccountNoPageState();
}

class _AccountNoPageState extends State<AccountNoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
              child: Column(
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
                          ],
                        )
                      ],
                    ),

                    Text("Saving - ETB - 7677",style: TextStyle(color: Colors.purple.shade800,fontSize: 18,fontWeight: FontWeight.bold)),

                    SizedBox(height: 20,),


                    Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 15.0),
                       child: Container(
                         decoration: BoxDecoration(
                           boxShadow: [
                             BoxShadow(
                               color: Colors.white70,
                             ),
                           ],

                           border: Border.all(color: Colors.purple,width: 2,),
                           borderRadius: BorderRadius.circular(3),
                         ),

                         child: SizedBox(height: 45,
                           child: Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 12.0),
                             child: TextField(
                               cursorColor: Colors.purple,
                               cursorHeight: 20,
                               style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Account No',
                                hintStyle: TextStyle(color: Colors.grey.shade600,fontSize: 16),
                              ),
                    ),
                           ),
                         ),
                       ),
                     ),


                    //Signup
                    SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(

                            primary: Colors.purple.shade600,
                            onPrimary: Colors.white,
                            textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Reciverdetail()));
                          }, child: Text('CONTINUE'),),
                      ),
                    )
                  ]
              )
          ),
        )
    );
  }
}

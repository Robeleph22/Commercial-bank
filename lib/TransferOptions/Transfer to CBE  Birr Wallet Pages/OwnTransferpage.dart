import 'package:flutter/material.dart';

import '../../BottombarPages/HomePage.dart';
import 'OwnPayment.dart';
import 'TransfertoCBEBirrwall.dart';

class OwnTransferPage extends StatefulWidget {
  const OwnTransferPage({Key? key}) : super(key: key);

  @override
  State<OwnTransferPage> createState() => _OwnTransferPageState();
}

class _OwnTransferPageState extends State<OwnTransferPage> {
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TransferCBEBiirwall()));
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

                    Text("Transfer to Own CBEBirr Account",style: TextStyle(color: Colors.purple.shade800,fontSize: 18,fontWeight: FontWeight.bold)),

                    SizedBox(height: 5),

                    Container(
                      height: 700,
                      width: double.infinity,
                      child: ListView(
                        children: [
                          GestureDetector(
                            onTap: () {
                              CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(129, 0, 183, 1)),
                              );
                              Navigator.push(context, MaterialPageRoute(builder: (context) => OwnPayment()));
                            },
                            child: ListTile(
                              leading: Container(
                                height: 40,
                                width: 20,
                                child: ImageIcon(AssetImage("Icons/Forwardicon.png"),color: Colors.purple,),
                              ),
                              title: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  //TODO
                                  Text('Saving - ETB -7677',style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                                  SizedBox(height: 3,)
                                ],
                              ),
                              //TODO
                              subtitle: Text('Balance: ETB 1000.00',style: TextStyle(color: Colors.grey,fontSize: 14),),


                            ),
                          ),

                          Divider(thickness: 1,indent: 10,endIndent: 10,),

                        ],
                      ),
                    ),
                  ]
              )
          ),
        )
    );
  }
}

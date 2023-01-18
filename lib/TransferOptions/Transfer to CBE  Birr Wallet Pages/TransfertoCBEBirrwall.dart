import 'package:flutter/material.dart';

import '../../BottombarPages/HomePage.dart';
import 'OtherTransferpage.dart';
import 'OwnTransferpage.dart';

class TransferCBEBiirwall extends StatefulWidget {
  const TransferCBEBiirwall({Key? key}) : super(key: key);

  @override
  State<TransferCBEBiirwall> createState() => _TransferCBEBiirwallState();
}

class _TransferCBEBiirwallState extends State<TransferCBEBiirwall> {
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

                    Text("Transfer to CBEBirr Wallet",style: TextStyle(color: Colors.purple.shade800,fontSize: 18,fontWeight: FontWeight.bold)),

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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => OtherTransferPage()));
                            },
                            child: ListTile(
                              leading: Container(
                                height: 40,
                                width: 40,
                                child: ImageIcon(AssetImage("Icons/menuicon.png"),color: Colors.purple,),
                              ),
                              title: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text('Transfer to Other CBEBirr Account',style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                                ],
                              ),
                              //TODO
                              subtitle: Text('Bank to Other CBEBirr transfer',style: TextStyle(color: Colors.grey,fontSize: 14),),


                            ),
                          ),

                          Divider(thickness: 1,indent: 10,endIndent: 10,),

                          GestureDetector(
                            onTap: () {
                              CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(129, 0, 183, 1)),
                              );
                               Navigator.push(context, MaterialPageRoute(builder: (context) => OwnTransferPage()));
                            },
                            child: ListTile(
                              leading: Container(
                                height: 40,
                                width: 40,
                                child: ImageIcon(AssetImage("Icons/menuicon.png"),color: Colors.purple,),
                              ),
                              title: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text('Transfer to Own CBEBirr Account',style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                                ],
                              ),
                              //TODO
                              subtitle: Text('Bank to Own CBEBirr Account',style: TextStyle(color: Colors.grey,fontSize: 14),),


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

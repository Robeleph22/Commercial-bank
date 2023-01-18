import 'package:commercialbank/Dashboard%20Options/TransferMoney.dart';
import 'package:flutter/material.dart';

import '../../../BottombarPages/HomePage.dart';
import 'Covid19Donation.dart';
import 'MekedoniaDonation.dart';
import 'OlympicDonation.dart';


class Donation extends StatefulWidget {
  const Donation({Key? key}) : super(key: key);

  @override
  State<Donation> createState() => _DonationState();
}

class _DonationState extends State<Donation> {
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TransferMoneyPage()));
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

                    Text("Donation",style: TextStyle(color: Colors.purple.shade800,fontSize: 18,fontWeight: FontWeight.bold)),

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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Covid19Donation()));
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

                                  Text('Covid 19 Donation',style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                                ],
                              ),
                              //TODO
                              subtitle: Text('Covid 19 Donation',style: TextStyle(color: Colors.grey,fontSize: 14),),


                            ),
                          ),

                          Divider(thickness: 1,indent: 10,endIndent: 10,),

                          GestureDetector(
                            onTap: () {
                              CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(129, 0, 183, 1)),
                              );
                               Navigator.push(context, MaterialPageRoute(builder: (context) => OlympicDonation()));
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

                                  Text('Olympic Team Donation',style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                                ],
                              ),
                              //TODO
                              subtitle: Text('Olympic Team Donation',style: TextStyle(color: Colors.grey,fontSize: 14),),


                            ),
                          ),

                          Divider(thickness: 1,indent: 10,endIndent: 10,),

                          GestureDetector(
                            onTap: () {
                              CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(129, 0, 183, 1)),
                              );
                               Navigator.push(context, MaterialPageRoute(builder: (context) => MekedoniaDonation()));
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

                                  Text('Mekedonia',style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                                ],
                              ),
                              //TODO
                              subtitle: Text('Donation fo Mekedonia',style: TextStyle(color: Colors.grey,fontSize: 14),),


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

import 'package:commercialbank/Dashboard%20Options/RechargePhone.dart';
import 'package:flutter/material.dart';

import '../BottombarPages/HomePage.dart';
import '../TransferOptions/Donation Pages/Donation.dart';
import '../TransferOptions/Local Money Transfer/LocalMoneyTransfer.dart';
import '../TransferOptions/Tele Birr Wallet Pages/TeleBirrWallet.dart';
import '../TransferOptions/Transfer to CBE  Birr Wallet Pages/TransfertoCBEBirrwall.dart';
import '../TransferOptions/Transfer to CBE Acc Pages/TransferCBEAcc.dart';

class TransferMoneyPage extends StatefulWidget {
  const TransferMoneyPage({Key? key}) : super(key: key);

  @override
  State<TransferMoneyPage> createState() => _TransferMoneyPageState();
}

class _TransferMoneyPageState extends State<TransferMoneyPage> {
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
                        IconButton(onPressed: () {}, icon: Icon(Icons.refresh,size: 28),color: Colors.purple,)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),

                Text("transfer",style: TextStyle(color: Colors.black,fontSize: 30),),

                SizedBox(height: 15,),

                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    height: 700,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          spreadRadius: 0.5,
                          blurRadius: 5,
                          offset: const Offset(0, 1),
                        )
                      ],
                      color: Colors.white,
                    ),
                    child: ListView(
                    children: [
                      GestureDetector(
                        onTap: () {
                          CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(129, 0, 183, 1)),
                          );
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TransferCBEACC()));
                        },
                        child: ListTile(
                          leading: Container(
                            height: 40,
                            width: 40,
                            child: ImageIcon(AssetImage("Icons/icons8-available-updates-96.png"),color: Colors.purple,),
                          ),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Transfer to CBE Account',style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                            ],
                          ),
                          subtitle: Text('Transfer to CBE Account',style: TextStyle(color: Colors.grey,fontSize: 16),),
                          trailing: Icon(Icons.arrow_forward_ios_outlined),

                        ),
                      ),

                      Divider(thickness: 2,indent: 75,),

                      GestureDetector(
                        onTap: () {
                          CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(129, 0, 183, 1)),
                          );
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TransferCBEBiirwall()));
                        },
                        child: ListTile(
                          leading: Container(
                            height: 40,
                            width: 40,
                            child: ImageIcon(AssetImage("Icons/icons8-available-updates-96.png"),color: Colors.purple,),
                          ),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Transfer to CBEBirr Wallet',style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                            ],
                          ),
                          subtitle: Text('Bank to CBEBirr Wallet transfer',style: TextStyle(color: Colors.grey,fontSize: 16),),
                          trailing: Icon(Icons.arrow_forward_ios_outlined),

                        ),
                      ),

                      Divider(thickness: 2,indent: 75,),

                      ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          child: ImageIcon(AssetImage("Icons/icons8-available-updates-96.png"),color: Colors.purple,),
                        ),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Make Payment to Beneficiary',style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                          ],
                        ),
                        subtitle: Text('Transfer to your beneficiary',style: TextStyle(color: Colors.grey,fontSize: 16),),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),

                      ),

                      Divider(thickness: 2,indent: 75,),

                      ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          child: ImageIcon(AssetImage("Icons/icons8-available-updates-96.png"),color: Colors.purple,),
                        ),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Own Account Transfer',style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                          ],
                        ),
                        subtitle: Text('Transfer between your accounts',style: TextStyle(color: Colors.grey,fontSize: 16),),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),

                      ),

                      Divider(thickness: 2,indent: 75,),

                      GestureDetector(
                        onTap: () {
                          CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(129, 0, 183, 1)),
                          );
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LocalTransferPage()));
                        },
                        child: ListTile(
                          leading: Container(
                            height: 40,
                            width: 40,
                            child: ImageIcon(AssetImage("Icons/icons8-available-updates-96.png"),color: Colors.purple,),
                          ),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Local Money Transfer',style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                            ],
                          ),
                          subtitle: Text('Transfer to any non CBE customer',style: TextStyle(color: Colors.grey,fontSize: 16),),
                          trailing: Icon(Icons.arrow_forward_ios_outlined),

                        ),
                      ),

                      Divider(thickness: 2,indent: 75,),

                      GestureDetector(
                        onTap: () {
                          CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(129, 0, 183, 1)),
                          );
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Donation()));
                        },
                        child: ListTile(
                          leading: Container(
                            height: 40,
                            width: 40,
                            child: ImageIcon(AssetImage("Icons/icons8-available-updates-96.png"),color: Colors.purple,),
                          ),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Donation',style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                            ],
                          ),
                          subtitle: Text('Donation',style: TextStyle(color: Colors.grey,fontSize: 16),),
                          trailing: Icon(Icons.arrow_forward_ios_outlined),

                        ),
                      ),

                      Divider(thickness: 2,indent: 75,),

                      GestureDetector(
                        onTap: () {
                          CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(129, 0, 183, 1)),
                          );
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TeleBirrWallet()));
                        },
                        child: ListTile(
                          leading: Container(
                            height: 40,
                            width: 40,
                            child: ImageIcon(AssetImage("Icons/icons8-available-updates-96.png"),color: Colors.purple,),
                          ),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Transfer to own Telebirr Wallet',style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                            ],
                          ),
                          subtitle: Text('Transfer to own Telebirr Wallet',style: TextStyle(color: Colors.grey,fontSize: 16),),
                          trailing: Icon(Icons.arrow_forward_ios_outlined),

                        ),
                      ),

                      Divider(thickness: 2,indent: 75,),

                      ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          child: ImageIcon(AssetImage("Icons/icons8-available-updates-96.png"),color: Colors.purple,),
                        ),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Transfer to Other Banks',style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                          ],
                        ),
                        subtitle: Text('Transfer to Other Banks',style: TextStyle(color: Colors.grey,fontSize: 16),),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),




                    ],
                  ),
                  ),
                )
              ],
          ),
        ),
      ),
    );
  }
}





import 'package:flutter/material.dart';
import '../Utilitys/Dashboarddetail.dart';
import '../Utilitys/MyDrawerHeader.dart';
import '../Dashboard Options/TransferMoney.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  GlobalKey<ScaffoldState> _scaffoldKEy = GlobalKey<ScaffoldState>();

  set value(bool value) {}

  @override
  Widget build(BuildContext context) {
    bool value = false;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          key: _scaffoldKEy,
          drawer: Drawer(
           child: Container(
             child: ListView(
               children: [
                 MyDrawerHeader(),

                 ListTile(leading: ImageIcon(AssetImage("Icons/icons8-lock-48.png",),size: 27,color: Colors.purple,),
                   title: Text("Change Password",style: TextStyle(fontWeight: FontWeight.bold),),
                 ),

                 ListTile(leading: ImageIcon(AssetImage("Icons/laptop.png",),size: 27,color: Colors.purple,),
                   title: Text("Unsubscribe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                 ),

                 ListTile(leading: Icon(Icons.power_settings_new_outlined,color: Colors.purple,size: 27,),
                   title: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold)),
                 ),

                 ListTile(leading: Icon(Icons.info,color: Colors.purple,size: 27,),
                   title: Text("About",style: TextStyle(fontWeight: FontWeight.bold)),
                 ),

                 ListTile(leading: Icon(Icons.star,color: Colors.purple,size: 27,),
                   title: Text("Rate App",style: TextStyle(fontWeight: FontWeight.bold)),
                 ),


                 SwitchListTile.adaptive(
                   title: Row(
                     children: [
                       ImageIcon(AssetImage("Icons/counter.png"),size: 27,color: Colors.purple),
                        SizedBox(width: 30,),
                        Text("CBE NOOR",style: TextStyle(fontWeight: FontWeight.bold)),
                     ],
                   ),
                   value: value,activeColor: Colors.purple,
                   onChanged: (value) => setState(() => this.value = value ),
                 ),


               ],
             ),
           ),
          ),
          body:
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    IconButton(onPressed: () => _scaffoldKEy.currentState?.openDrawer(),icon: Icon(Icons.menu,color: Colors.purple,)),
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
                ],),

                SizedBox(height: 15,),

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

                SizedBox(height: 15,),

                Text("Services",style: TextStyle(fontSize: 18,color:  Colors.purple.shade800),),

                SizedBox(height: 25,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(

                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TransferMoneyPage()));
                          },
                          child: Container(
                            height: 100,
                            width: 200,
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
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: ImageIcon(AssetImage("Icons/icons8-available-updates-96.png"),size: 40,color: Colors.purple,),
                                ),

                                SizedBox(height: 10,),

                                Text("Transfer",style: TextStyle(color:  Colors.purple.shade800,fontSize: 18)),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 20,),

                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TransferMoneyPage()));
                          },
                          child: Container(
                            height: 100,
                            width: 200,
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
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child:  ImageIcon(AssetImage("Icons/EthioTele.png"),size: 40,color: Colors.purple,),
                                ),

                                SizedBox(height: 10,),

                                Text("Top Up",style: TextStyle(color: Colors.purple.shade800,fontSize: 18))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TransferMoneyPage()));
                          },
                          child: Container(
                            height: 100,
                            width: 200,
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
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: ImageIcon(AssetImage("Icons/HouseUtility.png"),size: 35,color: Colors.purple,),
                                ),

                                SizedBox(height: 10,),

                                Text("Utilities",style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 20,),

                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TransferMoneyPage()));
                          },
                          child: Container(
                            height: 100,
                            width: 200,
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
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child:  Icon(Icons.people,color: Colors.purple,size: 40,)
                                ),

                                SizedBox(height: 10,),

                                Text("People",style: TextStyle(color: Colors.purple.shade800,fontSize: 18))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 15,),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TransferMoneyPage()));
                          },
                          child: Container(
                            height: 100,
                            width: 200,
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
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: ImageIcon(AssetImage("Icons/img_1.png"),size: 35,color: Colors.purple,),
                                ),

                                SizedBox(height: 10,),

                                Text("Finance",style: TextStyle(color: Colors.purple.shade800,fontSize: 18)),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 20,),

                      Expanded(
                        child: Container(
                          height: 100,
                          width: 200,
                          child: Column(
                            children: [
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 100,)

              ],
            ),
          ),
          ),
        );
  }
}
// SizedBox(height: 160,
// child: UserAccountsDrawerHeader(currentAccountPicture:
// Row(
// children: [
// Image.asset("Icons/CBE.png"),
// SizedBox(width: 5,),
// Text("commercial bank of ethiopia",style: TextStyle(color: Colors.amber,fontSize: 15),)
// ],
// ),
//
// decoration: BoxDecoration(
// image: DecorationImage(image: AssetImage("Icons/dottedworldmap.jpg"),fit: BoxFit.fill,colorFilter: ColorFilter.mode(Colors.purpleAccent.shade400, BlendMode.color))
//
// ),
// accountName: Text(
// "",style: TextStyle(fontSize: 30, color: Theme.of(context).textTheme.caption?.color)
// ),
// accountEmail: Text(
// "",style:TextStyle(fontSize: 16,
// color: Colors.greenAccent),),
//
//
// ),
// ),
// Row(
// children: [
// SizedBox(height: 60,width: 60,
// child: Image.asset("Icons/CBE.png")),
// Padding(
// padding: const EdgeInsets.only(bottom: 30.0),
// child: Text("COMMERCIAL BANK OF ETHIOPIA",style: TextStyle(color: Color.fromRGBO(232, 192, 5, 1),fontSize: 13),),
// ),
// ],
// )
//
// Row(
// children: [
// SizedBox(height: 60, width: 60,
// child: Image.asset('Icons/CBE.png')),
// Column(
// children: [
// Padding(
// padding: const EdgeInsets.only(top: 50.0,right: 15),
// child: Text("COMMERCIAL BANK OF ETHIOPIA",
// style: TextStyle(color: Color.fromRGBO(232, 192, 5, 1),fontSize: 12 )),
// ),
// SizedBox(height: 5,),
// Column(
// children: [
// Padding(
// padding: const EdgeInsets.only(right: 15.0),
// child: Text(" THE BANK YOU ALWAYS RELY ON!!",
// style: TextStyle(color: Color.fromRGBO(232, 192, 5, 1),fontSize: 12 )),                              ),
// ],
// ),
// ],
// ),
// ],
// ),
import 'package:flutter/material.dart';
import '../../BottombarPages/HomePage.dart';
import 'LocalMoneyTransfer.dart';


class LocalPayment extends StatefulWidget {
  const LocalPayment({Key? key}) : super(key: key);

  @override
  State<LocalPayment> createState() => _LocalPaymentState();
}

class _LocalPaymentState extends State<LocalPayment> {
  final FirstName =TextEditingController();
  final LastName =TextEditingController();
  final RecMobileno =TextEditingController();
  final Amount =TextEditingController();

  void dispose() {
    FirstName.dispose();
    LastName.dispose();
    RecMobileno.dispose();
    Amount.dispose();
    super.dispose();
  }
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LocalTransferPage()));
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

                  Text("Enter",style: TextStyle(color: Colors.purple.shade800,fontSize: 18,fontWeight: FontWeight.bold)),

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
                            controller: FirstName,
                            keyboardType: TextInputType.name,
                            cursorColor: Colors.purple,
                            cursorHeight: 20,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Recipent First Name: ',
                              hintStyle: TextStyle(color: Colors.grey.shade600,fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 15,),

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
                            controller: LastName,
                            keyboardType: TextInputType.name,
                            cursorColor: Colors.purple,
                            cursorHeight: 20,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Recipent Last Name: ',
                              hintStyle: TextStyle(color: Colors.grey.shade600,fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 15,),

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
                            controller: RecMobileno,
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.purple,
                            cursorHeight: 20,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Recipent Mob No: ',
                              hintStyle: TextStyle(color: Colors.grey.shade600,fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 15,),

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
                            controller: Amount,
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.purple,
                            cursorHeight: 20,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Amount',
                              hintStyle: TextStyle(color: Colors.grey.shade600,fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),




                  //continue
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
                          showDialog(
                              context: context,
                              builder: (context) => Dialog(
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                child: Container(
                                  height: 230,
                                  width: 150,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.purple.shade600,
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                                          ),

                                          child: SizedBox.expand(
                                            child: Column(
                                              children: [
                                                Align(alignment: Alignment.centerLeft,
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
                                                      child: Text('Confirm your payment',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          color: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 10),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Message',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 13),),
                                                SizedBox(height: 2,),
                                                //TODO PAYMENT INFO
                                                RichText(text: TextSpan(
                                                    style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),
                                                    children: <TextSpan>[
                                                      TextSpan(text: 'Balance: '),
                                                      TextSpan(text: 'ETB 1000.00'),

                                                    ]
                                                )),

                                                Row(
                                                  children: [
                                                    Text('Recipent First Name: ',style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                                                    Text(FirstName.text,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),

                                                Row(
                                                  children: [
                                                    Text('Recipent Last Name: ',style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                                                    Text(LastName.text,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),

                                                Row(
                                                  children: [
                                                    Text('Recipent Mob No: ',style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                                                    Text(RecMobileno.text,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),

                                                Row(
                                                  children: [
                                                    Text('Amount:  ',style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                                                    Text(Amount.text,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          TextButton(onPressed: () => Navigator.of(context).pop(), child: Text("CANCEL",style: TextStyle(color: Colors.purple.shade600,fontWeight: FontWeight.bold,fontSize: 15),)),
                                          TextButton(onPressed: () {}, child: Text("CONTINUE",style: TextStyle(color: Colors.purple.shade600,fontWeight: FontWeight.bold,fontSize: 15),))
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              )
                          );
                        }, child: Text('CONTINUE'),
                      ),
                    ),
                  )
                ]
            )
        ),
      ),
    );
  }
}
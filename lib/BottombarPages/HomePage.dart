import 'package:commercialbank/BottombarPages/Dashboard.dart';
import 'package:commercialbank/BottombarPages/Recent.dart';
import 'package:commercialbank/BottombarPages/Transactions.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _NavigetorBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _pages = [
    Dashboard(),
    Transactions(),
    Recent(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      _pages[_selectedIndex],
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple.shade600,
        elevation: 0,
        fixedColor: Colors.white,
        iconSize: 30,
        unselectedItemColor: Colors.white70,
        currentIndex: _selectedIndex,
        onTap: _NavigetorBottomBar,

        items: [
          BottomNavigationBarItem(icon:

          SizedBox(height: 20,
              child: ImageIcon(AssetImage('Icons/Menu.png'),)),label: 'Home'),

          BottomNavigationBarItem(icon:

          SizedBox(height: 25,
              child: ImageIcon(AssetImage('Icons/Bank.png'))),label: 'Accounts'),

          BottomNavigationBarItem(icon:

          SizedBox(height: 25,
              child: ImageIcon(AssetImage('Icons/History.png'))),label: 'Recents'),



        ],
      )

    );
  }
}

import 'package:flutter/material.dart';
import 'package:originice/Chat/Pages/rooms.dart';
import 'package:originice/Page/profilepage.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 24, color: Colors.black);
  List<Widget> _widgetOptions = <Widget>[
    Text(
      'Divisi',
      style: optionStyle,
    ),
    RoomsPage(),
    Text(
      'Timeline',
      style: optionStyle,
    ),
    Text(
      'File',
      style: optionStyle,
    ),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
              ),
            ],
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.content_paste),
                label: 'Divisi',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.question_answer),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.schedule),
                label: 'Timeline',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.folder),
                label: 'File',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedFontSize: 15,
            unselectedFontSize: 13,
            iconSize: 28,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.blue,
            onTap: _onItemTapped,
          ),
        ));
  }
}

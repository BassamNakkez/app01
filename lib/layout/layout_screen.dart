import 'package:flutter/material.dart';
import '../models/User/tasks_screen.dart';
import '../modules/Home/home_screen.dart';
import '../modules/Settings/settings_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);


  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selected=0;
  List<Widget> pages=
  [
    const  HomeScreen(),
    const  TasksScreen(),
    const  SettingsScreen(),

  ];


  @override
  Widget build ( BuildContext context ) {
    return Scaffold(
      backgroundColor: Colors.white10,

      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed ,
        unselectedFontSize: 17,
        selectedItemColor: Colors.deepOrange[400],
        unselectedItemColor: Colors.deepOrange[800],
        selectedFontSize: 15,
        elevation: 0.0,
        backgroundColor: Colors.black38,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
        selectedIconTheme:const IconThemeData(
          size: 30,
          color: Colors.deepOrange,
        ) ,
        currentIndex: selected,
        onTap: (index){
          setState(() {
            selected = index;
          });

        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.task),label: 'Tasks' ),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings')
      ],
      ),


      body: pages[selected],

      );
  }
}

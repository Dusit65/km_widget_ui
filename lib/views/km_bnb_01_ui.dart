import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_share_project/views/subviews/view1_ui.dart';
import 'package:money_share_project/views/subviews/view2_ui%20.dart';
import 'package:money_share_project/views/subviews/view3_ui.dart';
import 'package:money_share_project/views/subviews/view4_ui.dart';
import 'package:money_share_project/views/subviews/view5_ui.dart';
class KmBnb01UI extends StatefulWidget {
  const KmBnb01UI({super.key});

  @override
  State<KmBnb01UI> createState() => _KmBnb01UIState();
}

class _KmBnb01UIState extends State<KmBnb01UI> {
  
  List<Widget>_showView = [
    View1UI(),
    View2UI(),
    View3UI(),
    View4UI(),
    View5UI(),
  ];
  
  int _currentIndex = 2;
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text(
        'Test KM BNB 01',
        style: TextStyle(
          color: Colors.white
        ),
      ),
      centerTitle: true,
     ),
     body: _showView[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey[400],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.facebook),
            label: 'Facebook',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.google),
            label: 'Google',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.x),
            label: 'X',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.line),
            label: 'Line',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.linkedin),
            label: 'Linkedin',
            backgroundColor: Colors.lightBlue,
          ),
        ],
        ),
    );
  }
}

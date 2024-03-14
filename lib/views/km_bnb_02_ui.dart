import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_share_project/views/subviews/view1_ui.dart';
import 'package:money_share_project/views/subviews/view2_ui%20.dart';
import 'package:money_share_project/views/subviews/view3_ui.dart';
import 'package:money_share_project/views/subviews/view4_ui.dart';
import 'package:money_share_project/views/subviews/view5_ui.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
class KmBnb02UI extends StatefulWidget {
  const KmBnb02UI({super.key});

  @override
  State<KmBnb02UI> createState() => _KmBnb01UIState();
}

class _KmBnb01UIState extends State<KmBnb02UI> {
  
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
//app bar
     appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text(
        'Test KM BNB 02',
        style: TextStyle(
          color: Colors.white
        ),
      ),
      centerTitle: true,
     ),
     body: _showView[_currentIndex],
//navigation bar
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        // selectedItemColor: Colors.yellow,
        // unselectedItemColor: Colors.grey[400],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.facebook),
            title: Text('Facebook'),
            selectedColor: Colors.blue,
            unselectedColor: Colors.grey[400],
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.google),
            title: Text('Google'),
            selectedColor: Colors.red,
            unselectedColor: Colors.grey[400],
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.x),
            title: Text('X'),
            selectedColor: Colors.grey,
            unselectedColor: Colors.grey[400],
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.line),
            title: Text('Line'),
            selectedColor: Colors.green,
            unselectedColor: Colors.grey[400],
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.linkedin),
            title: Text('Linkedin'),
            selectedColor: Colors.lightBlue,
            unselectedColor: Colors.grey[400],
          ),
        ],
        ),
    );
  }
}

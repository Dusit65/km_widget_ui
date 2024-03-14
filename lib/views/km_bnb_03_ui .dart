import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_share_project/views/subviews/view1_ui.dart';
import 'package:money_share_project/views/subviews/view2_ui%20.dart';
import 'package:money_share_project/views/subviews/view3_ui.dart';
import 'package:money_share_project/views/subviews/view4_ui.dart';
import 'package:money_share_project/views/subviews/view5_ui.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
class KmBnb03UI extends StatefulWidget {
  const KmBnb03UI({super.key});

  @override
  State<KmBnb03UI> createState() => _KmBnb01UIState();
}

class _KmBnb01UIState extends State<KmBnb03UI> {
  
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
        'Test KM BNB 0',
        style: TextStyle(
          color: Colors.white
        ),
      ),
      centerTitle: true,
     ),
     body: _showView[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.black,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          TabItem(
            icon: Icon(FontAwesomeIcons.facebook,
            color: Colors.blue,),
            title: 'Facebook',
            
          ),
          TabItem(
            icon: Icon(FontAwesomeIcons.google,
            color: Colors.red,),
            title: 'Google',
            
          ),
          TabItem(
            icon: Icon(FontAwesomeIcons.x,
            color: Colors.grey,),
            title: 'X',
           
          ),
          TabItem(
            icon: Icon(FontAwesomeIcons.line,
            color: Colors.green,),
            title: 'Line',
            
          ),
          TabItem(
            icon: Icon(FontAwesomeIcons.linkedin,
            color: Colors.lightBlue,
            ),
            title: 'Linkedin',
            
           
          ),
        ],
        ),
    );
  }
}

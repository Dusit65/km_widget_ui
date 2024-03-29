import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class View4UI extends StatelessWidget {
  const View4UI({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
//icon
            Icon(
              FontAwesomeIcons.line,
              size: MediaQuery.of(context).size.width *0.75,
              color:Colors.green
            ),
            SizedBox(
              height:  MediaQuery.of(context).size.height *0.08,
            ),
            Text(
              'Line',
              style: TextStyle(
                color: Colors.green,
                fontSize:  MediaQuery.of(context).size.height *0.026,
              ),
            ),
          ],
        ),
      ),);
  }
}
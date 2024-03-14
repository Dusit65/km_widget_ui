import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class View5UI extends StatelessWidget {
  const View5UI({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
//icon
            Icon(
              FontAwesomeIcons.linkedin,
              size: MediaQuery.of(context).size.width *0.75,
              color:Colors.blue
            ),
            SizedBox(
              height:  MediaQuery.of(context).size.height *0.08,
            ),
            Text(
              'Linkedin',
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize:  MediaQuery.of(context).size.height *0.026,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
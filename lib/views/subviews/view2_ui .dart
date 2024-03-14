import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class View2UI extends StatelessWidget {
  const View2UI({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
//icon
            Icon(
              FontAwesomeIcons.google,
              size: MediaQuery.of(context).size.width *0.75,
              color:Colors.red
            ),
            SizedBox(
              height:  MediaQuery.of(context).size.height *0.08,
            ),
            Text(
              'Google',
              style: TextStyle(
                color: Colors.red,
                fontSize:  MediaQuery.of(context).size.height *0.026,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
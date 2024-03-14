import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class View1UI extends StatelessWidget {
  const View1UI({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
//icon            
            Icon(
              FontAwesomeIcons.facebookF,
              size: MediaQuery.of(context).size.width *0.75,
              color:Colors.blue
            ),
            SizedBox(
              height:  MediaQuery.of(context).size.height *0.08,
            ),
            Text(
              'facebook',
              style: TextStyle(
                color: Colors.blue,
                fontSize:  MediaQuery.of(context).size.height *0.026,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
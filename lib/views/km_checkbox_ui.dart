// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmCheckboxUI extends StatefulWidget {
  const KmCheckboxUI({super.key});

  @override
  State<KmCheckboxUI> createState() => _KmCheckboxUIState();
}

class _KmCheckboxUIState extends State<KmCheckboxUI> {
  bool _chk01 = false;
  bool _chk02 = false;
  // bool _chk03 = false;
  // bool _chk04 = false;
  // bool _chk05 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('แชร์ KM Checkbox'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
//CB
            Checkbox(
              onChanged: (paraValue) {
                setState(() {
                  _chk01 = paraValue!;
                });
              },
              value: _chk01,
              checkColor: Colors.red,
              activeColor: Colors.yellow,
              side: BorderSide(color: Colors.blue),
            ),
            SizedBox(
              height: 20.0,
            ),
//CBListTile            
            CheckboxListTile(
              onChanged: (paraValue) {
                setState(() {
                  _chk02 = paraValue!;
                });
              },
              value: _chk02,
              title: Text(
                'JAVA',

              ),
              subtitle: Text(
                'Programing'
              ),
              secondary: Icon(
                FontAwesomeIcons.java,
                color: Colors.red,
              ),
              controlAffinity: ListTileControlAffinity.trailing,
              checkColor: Colors.red,
              activeColor: Colors.orange,
              side: BorderSide(color: Colors.blue),

            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmRadioUI extends StatefulWidget {
  const KmRadioUI({super.key});

  @override
  State<KmRadioUI> createState() => _KmRadioUIState();
}

class _KmRadioUIState extends State<KmRadioUI> {
  int pl = 2;
  String food = 'Pizza';
  String major = "DTI";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('แชร์ KM Radio'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
//Python
                Radio(
                  onChanged: (paraValue){
                    setState(() {
                      pl = paraValue!;
                    });
                  },
                  value: 1,
                  groupValue: pl,
                ),
                Text(
                  'Python'
                ),
//JAVA
                Radio(
                  onChanged: (paraValue){
                    setState(() {
                      pl = paraValue!;
                    });
                  },
                  value: 2,
                  groupValue: pl,
                ),
                Text(
                  'JAVA'
                ),
//C#
                Radio(
                  onChanged: (paraValue){
                    setState(() {
                      pl = paraValue!;
                    });
                  },
                  value: 3,
                  groupValue: pl,
                ),
                Text(
                  'C#'
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),


            Padding(
              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.4
               ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
//Pizza
                  Row(
                    children: [
                      Radio(
                        onChanged: (paraValue){
                          setState(() {
                            food = paraValue!;
                          });
                        },
                        value: 'Pizza',
                        groupValue: food,
                      ),
                      Text(
                        'Pizza'
                      ),
                    ],
                  ),
              //KFC
                  Row(
                    children: [
                      Radio(
                        onChanged: (paraValue){
                          setState(() {
                            food = paraValue!;
                          });
                        },
                        value: 'KFC',
                        groupValue: food,
                      ),
                      Text(
                        'KFC'
                      ),
                    ],
                  ),
              //Amazon
                  Row(
                    
                    children: [
                      Radio(
                        onChanged: (paraValue){
                          setState(() {
                            food = paraValue!;
                          });
                        },
                        value: 'Amazon',
                        groupValue: food,
                      ),
                      Text(
                        'Amazon'
                      ),
                    ],
                  ),
              //Fuji
                  Row(
                    
                    children: [
                      Radio(
                        onChanged: (paraValue){
                          setState(() {
                            food = paraValue!;
                          });
                        },
                        value: 'Fuji',
                        groupValue: food,
                        activeColor: Colors.red,
                        fillColor: MaterialStateColor.resolveWith((states) => Colors.amber),
                      ),
                      Text(
                        'Fuji'
                      ),
                    ],
                  ),
                ],
              ),
            ),
          RadioListTile(
            value: 'DTI',
            onChanged: (paraValue) {
              setState(() {
                major = paraValue!;
              });
            },
            groupValue: major,
            title: Text(
              'สาขาDTI'
            ),
            subtitle: Text(
              'Digital Technology and Innovation'
            ),
            secondary: Icon(
              FontAwesomeIcons.google
            ),
          ),

          RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,
            value: 'DM',
            onChanged: (paraValue) {
              setState(() {
                major = paraValue!;
              });
            },
            groupValue: major,
            title: Text(
              'สาขาDM'
            ),
            subtitle: Text(
              'Digital Media'
            ),
            secondary: Icon(
              FontAwesomeIcons.google
            ),
          )
          ],
        ),
      ),
    );
  }
}

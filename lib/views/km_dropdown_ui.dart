// ignore_for_file: unused_field

import 'dart:ffi';

import 'package:flutter/material.dart';

class KmDropdownUI extends StatefulWidget {
  const KmDropdownUI({super.key});

  @override
  State<KmDropdownUI> createState() => _KmDropdownUIState();
}

class _KmDropdownUIState extends State<KmDropdownUI> {
  //list คล้ายarray
  List<String> _plList = [
    'JAVA',
    'Python',
    'C#',
    'Go',
    'Dart',
  ];
  String _programming = 'JAVA';
  //------------------------------
  List<String> _uList = [
    'SAU',
    'TU',
    'CMU',
    'CHULA',
    'MU',
  ];
  String _university = 'CMU';
//------------------------------
 List<String> _fList = [
    'Pizza',
    'KFC',
    'Amazon',
    'Fuji',

  ];
  String _food = 'Pizza';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('แชร์ KM Dropdown'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: _programming,
              onChanged: (paraValue) {
                setState(() {
                  _programming = paraValue!;
                });
              },
              items: _plList
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          e,
                        ),
                      ))
                  .toList(),
              isExpanded: true,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 80.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),

                ),
                
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: _university,
                    onChanged: (paraValue) {
                      setState(() {
                        _university = paraValue!;
                      });
                    },
                    items: _uList
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.holiday_village,
                                    color: Colors.purple,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    e,
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          SizedBox(height: 30,),

           Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 80.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(10),

                ),
                
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: _food,
                    dropdownColor: Colors.red[50],
                    onChanged: (paraValue) {
                      setState(() {
                        _food = paraValue!;
                      });
                    },
                    items: _fList
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.food_bank,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    e,
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

import 'screen3.dart';

void main() {
  runApp(const Screen2());
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: ListTile(
                  leading: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  trailing: Icon(Icons.search),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'Boarding\nCards',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: MyCard(
                          startingL: 'New York',
                          Shstarting: 'NYC',
                          Destination: 'San Fransico',
                          ShDestin: 'SFO',
                          Date: '24 Jan 2022',
                          Passengers: '2 Adults'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: MyCard(
                          startingL: 'Las Vegas',
                          Shstarting: 'LAS',
                          Destination: 'Boston',
                          ShDestin: 'BOS',
                          Date: '24 March 2022',
                          Passengers: '1 Adults'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: MyCard(
                          startingL: 'Los Angeles',
                          Shstarting: 'LOS',
                          Destination: 'Omaha',
                          ShDestin: 'OMA',
                          Date: '29 May 2022',
                          Passengers: '2 Adults, 1 child'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: MyCard(
                          startingL: 'Austin',
                          Shstarting: 'AUS',
                          Destination: 'Indianpolis',
                          ShDestin: 'IND',
                          Date: '12 Jan 2022',
                          Passengers: '4 Adults'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String startingL;
  final String Shstarting;
  final String Destination;
  final String ShDestin;
  final String Date;
  final String Passengers;

  MyCard({
    required this.startingL,
    required this.Shstarting,
    required this.Destination,
    required this.ShDestin,
    required this.Date,
    required this.Passengers,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen3()));
      },
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black12, blurRadius: 10.0, offset: Offset(0.0, 10.0))
        ]),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Shstarting,
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        startingL,
                        style: TextStyle(fontSize: 10, color: Colors.black54),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        Date,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ShDestin,
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        Destination,
                        style: TextStyle(fontSize: 10, color: Colors.black54),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        Passengers,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 100),
                Expanded(
                  child: DottedLine(
                    dashLength: 2,
                    dashGapLength: 3,
                    lineThickness: 2,
                    dashColor: Colors.black26,
                    dashGapColor: Colors.transparent,
                    direction: Axis.vertical,
                    lineLength: 60,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Icon(Icons.flight, color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                  leading: Icon(Icons.arrow_back),
                  trailing: Icon(Icons.search),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'Saved\ndestitaion',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 9,
                child: Row(
                  // ignore: duplicate_ignore
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                            PictureBox(
                              flexx: 6,
                              img: 'images/newyork.jpeg',
                              wid: BoxData(
                                date: '22 Dec 22',
                                cityName: 'NYC',
                                cityShortName: 'New York',
                                distance: 3200,
                              ),
                            ),

                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 10,
                          ),
                          PictureBox(
                            flexx: 4,
                            img: 'images/denver.jpg',
                            wid: BoxData(
                              date: '20 March 22',
                              cityName: 'SFO',
                              cityShortName: 'San Francisco',
                              distance: 1376,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        PictureBox(
                          flexx: 4,
                          img: 'images/sanfransico.jpg',
                          wid: BoxData(
                            date: '12 Jan 22',
                            cityName: 'DEN',
                            cityShortName: 'Denver',
                            distance: 6409,
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(
                          height: 10,
                        ),
                        PictureBox(
                          flexx: 6,
                          img: 'images/newyork.jpeg',
                          wid: BoxData(
                            date: '22 Dec 22',
                            cityName: 'NYC',
                            cityShortName: 'New York',
                            distance: 3200,
                          ),
                        ),
                      ],
                    )),
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

class PictureBox extends StatelessWidget {
  final int flexx;
  final String img;
  final Widget wid;

  PictureBox({required this.flexx, required this.img, required this.wid});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flexx,
      child: GestureDetector(
        onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
        },
        child: Container(
            child: wid,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover))),
      ),
    );
  }
}

class BoxData extends StatelessWidget {
  BoxData(
      {required this.date,
      required this.cityName,
      required this.cityShortName,
      required this.distance});
  final String date;
  final String cityName;
  final String cityShortName;
  final int distance;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          children: [
            // ignore: prefer_const_constructors
            Icon(
              Icons.calendar_today_outlined,
              color: Colors.white,
            ),
            Text(
              date,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Column(
          children: [
            Text(
              cityShortName,
              // ignore: prefer_const_constructors
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
            Text(
              cityName,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            Icon(
              Icons.location_on_outlined,
              color: Colors.white,
            ),
            Text(
              distance.toString() + 'KM',
              // ignore: prefer_const_constructors
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ],
    );
  }
}

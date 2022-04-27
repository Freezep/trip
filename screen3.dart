// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Screen3());
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        )
                    ),
                    Expanded(
                        flex: 10,
                        child: Image(
                          image: AssetImage('images/tower.png'),
                        )
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New York',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900
                        ),
                      ),
                      Text(
                          'The first documented visit into New York Harbor by a European was in 1524 by Giovanni da Verrazzano, a Florentine explorer  in the service of the French crown.[89] He claimed the area for France and named it Nouvelle Angoulême (New Angoulême).')
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}

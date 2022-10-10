import 'dart:async';

import 'package:flutter/material.dart';

import 'package:jcargo/Widget/GoogleMap.dart';

class JourneyDetail extends StatefulWidget {
  const JourneyDetail({super.key});

  @override
  State<JourneyDetail> createState() => _JourneyDetailState();
}

class _JourneyDetailState extends State<JourneyDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.45,
          child: const GoogleMapContainer(),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Card(
                  elevation: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Driver',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      Text(
                        'Rachael Kamau',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  )),
              Card(
                  elevation: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Journey',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      Text(
                        'Nakuru - Nairobi',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  )),
              Card(
                  elevation: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Luggage',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: Text(
                          'Driver accepts lugagge of 10kg maximum',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  )),
              Card(
                  elevation: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Driver Interest',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: Text(
                          'Driver prefers rhumba song.',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  )),
              Card(
                  elevation: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Time',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: Text(
                          '12:00hrs',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  )),
              Card(
                  elevation: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Passengers',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: Text(
                          '8 passenger',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  )),
              Card(
                  elevation: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Fare',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: Text(
                          ' ksh 1,000',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  )),
              Card(
                  elevation: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Driver Rating',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: Text(
                          '5',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  )),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    elevation: 1,
                    backgroundColor: Colors.amber),
                child: const Text(
                  "Book A Ride",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

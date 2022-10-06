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
          height: MediaQuery.of(context).size.height * 0.4,
          child: const GoogleMapContainer(),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Driver',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  Text(
                    'Rachael Kamau',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Journey',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  Text(
                    'Mombasa - Nairobi',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Time',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  Text(
                    '12:00 pm',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Car',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  Text(
                    'Car is 8 sitter',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Driver Recommendation.',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Driver needs people who are lovers of country music.',
                      style: TextStyle(fontSize: 18),
                      overflow: TextOverflow.clip,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Luggage:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Small luggage the car is 10kg maxmum',
                      style: TextStyle(fontSize: 18),
                      overflow: TextOverflow.clip,
                    ),
                  )
                ],
              ),
              const TextButton(onPressed: null, child: Text('Contact Driver'))
            ],
          ),
        )
      ],
    ));
  }
}

import 'dart:convert';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:jcargo/Pages/Journey.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String dropdownvalue = 'Journey';

    // List of items in our dropdown menu
    var items = [
      'Journey',
      'Movers',
      'Parcels',
    ];

    return Scaffold(
        drawer:
            const Drawer(backgroundColor: Color.fromARGB(255, 88, 214, 202)),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.8,
              width: double.infinity,
              color: Colors.teal,
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.all(50),
                  child: Text(
                    "JCargo",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 50),
                  child: TextFormField(
                    style: const TextStyle(fontSize: 18, color: Colors.black54),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.amber,
                        size: 30,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search',
                      contentPadding: const EdgeInsets.all(15),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: DropdownButton(
                // Initial Value
                value: dropdownvalue,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {},
              ),
            ),
            const Journey(),
          ],
        ));
  }
}

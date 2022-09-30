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
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white54)),
                        labelText: 'search journey',
                        labelStyle: TextStyle(color: Colors.white70),
                        prefixIcon: Icon(Icons.search),
                        hintStyle: TextStyle(color: Colors.white)),
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

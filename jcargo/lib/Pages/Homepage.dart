import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(backgroundColor: Colors.teal),
        body: Column(
          children: [
            Container(
              height: 300,
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
            )
          ],
        ));
  }
}

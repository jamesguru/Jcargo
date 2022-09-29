import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
            ),
            const ListTile(
              subtitle: Text('Private'),
              title: Text(
                'Mombasa - Nakuru',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.more),
            ),
            const ListTile(
              subtitle: Text('Private'),
              title: Text(
                'Kisumu - Nakuru',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.more),
            ),
            const ListTile(
              subtitle: Text(
                'public',
                style: TextStyle(color: Colors.amber),
              ),
              title: Text(
                'Mombasa - Nakuru',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.more),
            ),
            const ListTile(
              subtitle: Text('Private'),
              title: Text(
                'Isiolo - Nyahururu',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.more),
            ),
            const ListTile(
              subtitle: Text(
                'public',
                style: TextStyle(color: Colors.amber),
              ),
              title: Text(
                'Likoni - Mombasa',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.more),
            ),
            const ListTile(
              subtitle: Text('Private'),
              title: Text(
                'Mombasa - Eldoret',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.more),
            ),
            const ListTile(
              subtitle: Text('Private'),
              title: Text(
                'Mombasa - Nanyuki',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.more),
            ),
            const ListTile(
              subtitle: Text(
                'public',
                style: TextStyle(color: Colors.amber),
              ),
              title: Text(
                'Nairobi - Nakuru',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.more),
            ),
          ],
        ));
  }
}

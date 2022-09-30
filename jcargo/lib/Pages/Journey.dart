import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:jcargo/Pages/JourneyDetail.dart';

class Journey extends StatelessWidget {
  const Journey({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const JourneyDetail()),
            );
          },
          child: const ListTile(
            subtitle: Text('Private'),
            title: Text(
              'Mombasa - Nakuru',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.more),
          ),
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
      ]),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Card(),
  ));
}

class Card extends StatefulWidget{
  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  
  int level = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:const Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
        ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/download.jpeg'),
                radius:40.0,
              ),
            ),
            Divider(height: 60.0,
            color: Colors.grey[800],
            ),
            const Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )
            ),
            const SizedBox(height: 10.0),
            Text(
              'Chun-Li',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              )
            ),
            const SizedBox(height: 30.0),
            const Text(
              'Current level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )
            ),
            const SizedBox(height: 10.0),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              )
            ),
            const SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10.0),
                Text(
                  'chun.li@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize:18.0,
                    letterSpacing: 1.0,
                  )
                ),
              ],)
          ],
          ),
      ),
    );
  }
}



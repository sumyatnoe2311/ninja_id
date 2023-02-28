import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('ninja.jpg'),
              radius: 40,
            ),
          ),
          Divider(
            height: 90,
            color: Colors.grey[400],
          ),
          Text(
            "NAME",
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Chun-Li",
            style: TextStyle(
              color: Colors.amber[200],
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "CURRENT NINJA LEVEL",
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "$ninjaLevel",
            style: TextStyle(
              color: Colors.amber[200],
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "chun-li123@gmail.com",
                style: TextStyle(
                    fontSize: 18, color: Colors.grey[400], letterSpacing: 1),
              ),
            ],
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[850],
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HalteInformation extends StatelessWidget {
  const HalteInformation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: Container(
        margin: EdgeInsets.only(
          top: 20/2,
        ),
        color: Color.fromARGB(255, 228, 228, 228),
        child: Column(
          children: <Widget>[
            Expanded(
              child: 
                Card( //card1
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.directions_bus),
                        title: Text('Halte Leuwi Panjang'),
                        subtitle: Text('Jalan Leuwi Panjang'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('More', style: TextStyle(color: Colors.amber),),
                            onPressed: () {/* ... */},
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
            ),

            Expanded(
              child: 
                Card( //card2
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.directions_bus),
                        title: Text('Halte Leuwi Panjang'),
                        subtitle: Text('Jalan Leuwi Panjang'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('More', style: TextStyle(color: Colors.amber),),
                            onPressed: () {/* ... */},
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
            ),

            Expanded(
              child: 
                Card( //card3
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.directions_bus),
                        title: Text('Halte Leuwi Panjang'),
                        subtitle: Text('Jalan Leuwi Panjang'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('More', style: TextStyle(color: Colors.amber),),
                            onPressed: () {/* ... */},
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
            ),

            Expanded(
              child: 
                Card( //card4
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.directions_bus),
                        title: Text('Halte Leuwi Panjang'),
                        subtitle: Text('Jalan Leuwi Panjang'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('More', style: TextStyle(color: Colors.amber),),
                            onPressed: () {/* ... */},
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
            )
          ],
        ), 
      ),
    );
  }
}
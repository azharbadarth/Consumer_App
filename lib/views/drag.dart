import 'package:flutter/material.dart';

class dragable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Draggable Scrollable Sheet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DraggableSheetExample(),
    );
  }
}

class DraggableSheetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable Scrollable Sheet'),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.5, // Initial height of the sheet (0.0 - 1.0)
            minChildSize: 0.2, // Minimum height of the sheet when collapsed
            maxChildSize: 1.0, // Maximum height of the sheet when expanded
            builder: (context, controller) {
              return Container(
                color: Colors.grey[200],
                child: ListView.builder(
                  controller: controller,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Sheet item $index'),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

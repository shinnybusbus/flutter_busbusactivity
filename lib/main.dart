import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buttons and Icons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Activity',
            style: TextStyle(fontSize: 24),
            
          ),
          centerTitle: true,
          backgroundColor: Colors.yellow,
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Image.asset(
                'assets/shin.jpeg',
                width: 200,
              ),

              SizedBox(height: 24),

              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.edit),
                    label: Text('Edit'),
                  ),

                  SizedBox(width: 16), 

                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.delete),
                    label: Text('Delete'),
                  ),
                ],
              ),

              SizedBox(height: 24),

          
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTzJZlB0oX8mMUfx3LBwu-54hsaVC_pOTHwg&s",
                width: 300,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.teal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.settings),
                tooltip: 'Settings',
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.home),
                tooltip: 'Home',
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person),
                tooltip: 'Profile',
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
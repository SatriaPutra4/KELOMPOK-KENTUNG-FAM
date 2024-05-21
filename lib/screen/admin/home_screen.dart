import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_ti22a/config/asset.dart';
import 'package:project_ti22a/screen/admin/list_mahasiswa.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Menu'),
    Text('Orders'),
    Text('Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('KENTUNG COFFE',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            
          ),
          ),
          backgroundColor: Colors.brown[400],

        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.brown[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Kentung Coffe',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '"Kentung Coffee: From Bean to Cup, We Deliver an Unforgettable Coffee Experience, One Sip at a Time."',
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular Coffees',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CoffeeCard(
                            title: 'Espresso',
                            description: 'Strong and Flavorful',
                            image: 'https://th.bing.com/th/id/OIP.iuXuV3I1W9x3H6EVzOa8XwAAAA?rs=1&pid=ImgDetMain',
                          ),
                          CoffeeCard(
                            title: 'Cappuccino',
                            description: 'Rich and Creamy',
                            image: 'https://th.bing.com/th/id/OIP.zBhnw1zH8lnSABXPCORfQgHaEK?rs=1&pid=ImgDetMain',
                          ),
                          CoffeeCard(
                            title: 'Latte',
                            description: 'Smooth and Silky',
                            image: 'https://brookrest.com/wp-content/uploads/2020/05/AdobeStock_315919556-scaled.jpeg',
                          ),
                          CoffeeCard(
                            title: 'Americano',
                            description: 'Cold and Strenght',
                            image: 'https://majalah.ottencoffee.co.id/wp-content/uploads/2020/02/3-1.jpg',
                          ),
                          CoffeeCard(
                            title: 'Macchiato',
                            description: 'Foammy and Silky',
                            image: 'data:image/jpeg;base64,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',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 153, 103, 103), // Color for selected items
          unselectedItemColor: Colors.white70, // Color for unselected items
          backgroundColor: const Color.fromARGB(255, 193, 51, 0), // Background color of the BottomNavigationBar
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class CoffeeCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  CoffeeCard({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 10),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            image,
            height: 120,
            width: 180,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

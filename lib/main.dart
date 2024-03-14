import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:moviecatalog/genre-Hindi.dart';
import 'package:moviecatalog/menu-drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:
            const Color(0xFF00050D), // Set background color to #00050d
        appBar: AppBar(
          title: const Text(
            'MovieCatalog App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 96, 3, 3),
        ),
        drawer: const MenuDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: 'Genre',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'My Account',
            ),
          ],
          unselectedItemColor: const Color.fromARGB(255, 96, 3, 3),
          selectedItemColor: const Color.fromARGB(255, 96, 3, 3),
          backgroundColor: Colors.blue,
          onTap: (int index) {
            if (index == 2 ) { 
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HindiGenre()),
              );
            }
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                items: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HindiGenre()),
                      );
                    },
                    child: Image.network(
                      'https://res.cloudinary.com/dhcvdux8e/image/upload/v1710443971/movie%20catalog/bastar.jpg',
                      height: 400,
                      width: 400,
                      fit: BoxFit.fill,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HindiGenre()),
                      );
                    },
                    child: Image.network(
                      'https://res.cloudinary.com/dhcvdux8e/image/upload/f_auto,q_auto/v1/movie%20catalog/teri%20batoon',
                      height: 400,
                      width: 400,
                      fit: BoxFit.fill,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HindiGenre()),
                      );
                    },
                    child: Image.network(
                      'https://miro.medium.com/v2/resize:fit:1400/1*dp9v_9BHhTwq6DPsFy84aw.jpeg',
                      height: 400,
                      width: 400,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 300,
                  viewportFraction: 1.0,
                  autoPlay: true,
                  enlargeCenterPage: false,
                ),
              ),
              SizedBox(
                height: 400,
                child: GridView.count(
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  children: [
                    _buildCategoryItem('Action',
                        'https://res.cloudinary.com/dhcvdux8e/image/upload/f_auto,q_auto/v1/movie%20catalog/netflix',
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HindiGenre()),
                      );
                    }),
                    _buildCategoryItem('Comedy',
                        'https://res.cloudinary.com/dhcvdux8e/image/upload/movie%20catalog/prime.jpg',
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HindiGenre()),
                      );
                    }),
                    _buildCategoryItem('Drama',
                        'https://res.cloudinary.com/dhcvdux8e/image/upload/movie%20catalog/chaupal.jpg',
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HindiGenre()),
                      );
                    }),
                    _buildCategoryItem('Thriller',
                        'https://res.cloudinary.com/dhcvdux8e/image/upload/movie%20catalog/zee5.jpg',
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HindiGenre()),
                      );
                    }),
                    _buildCategoryItem('Horror',
                        'https://res.cloudinary.com/dhcvdux8e/image/upload/movie%20catalog/sony%20liv.jpg',
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HindiGenre()),
                      );
                    }),
                    
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    SizedBox(height: 20),
                    SizedBox(height: 2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryItem(
      String category, String imageUrl, Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFF00050D),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.network(
          imageUrl,
          height:
              double.infinity, // Set height to fill available space vertically
          width:
              double.infinity, // Set width to fill available space horizontally
          fit: BoxFit.cover, // Use cover to fill the entire space
        ),
      ),
    );
  }
}

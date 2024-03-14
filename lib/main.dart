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
          backgroundColor: const Color.fromRGBO(12, 41, 65, 1),
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
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.blue,
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
                      'https://res.cloudinary.com/dtvaexasg/image/upload/v1710393330/flutter/movie_1.jpg',
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
                      'https://res.cloudinary.com/dtvaexasg/image/upload/v1710393546/flutter/movie_2.jpg',
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
                        'https://res.cloudinary.com/dtvaexasg/image/upload/v1710396367/flutter/hindi.png',
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HindiGenre()),
                      );
                    }),
                    _buildCategoryItem('Comedy',
                        'https://res.cloudinary.com/dtvaexasg/image/upload/v1710397585/flutter/english.png',
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HindiGenre()),
                      );
                    }),
                    _buildCategoryItem('Drama',
                        'https://res.cloudinary.com/dtvaexasg/image/upload/v1710397708/flutter/punjabi.png',
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HindiGenre()),
                      );
                    }),
                    _buildCategoryItem('Thriller',
                        'https://res.cloudinary.com/dtvaexasg/image/upload/v1710397709/flutter/gujrati.png',
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HindiGenre()),
                      );
                    }),
                    _buildCategoryItem('Horror',
                        'https://res.cloudinary.com/dtvaexasg/image/upload/v1710397711/flutter/telugu.png',
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

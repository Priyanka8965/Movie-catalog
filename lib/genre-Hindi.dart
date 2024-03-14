import 'package:flutter/material.dart';
import 'package:moviecatalog/menu-drawer.dart';

class HindiGenre extends StatelessWidget {
  const HindiGenre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hindi Genre',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 96, 3, 3),
      ),
      drawer: MenuDrawer(),
      backgroundColor: const Color(0xFF00050D),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search by name',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Minimum Rating',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Maximum Rating',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 30,
              mainAxisSpacing: 40,
              padding: EdgeInsets.all(10),
              children: [
                _buildPhotoListItem(
                  imageUrl: 'https://res.cloudinary.com/dhcvdux8e/image/upload/v1710443971/movie%20catalog/bastar.jpg',
                  description: 'Bastar',
                  rating: 4.5,
                ),
                _buildPhotoListItem(
                  imageUrl: 'https://res.cloudinary.com/dhcvdux8e/image/upload/f_auto,q_auto/v1/movie%20catalog/teri%20batoon',
                  description: 'Teri batoon',
                  rating: 5,
                ),
                _buildPhotoListItem(
                  imageUrl: 'https://miro.medium.com/v2/resize:fit:1400/1*dp9v_9BHhTwq6DPsFy84aw.jpeg',
                  description: 'Masaan',
                  rating: 5,
                ),
                _buildPhotoListItem(
                  imageUrl: 'https://res.cloudinary.com/dhcvdux8e/image/upload/v1710443971/movie%20catalog/bastar.jpg',
                  description: 'Bastar',
                  rating: 4.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoListItem({
    required String imageUrl,
    required String description,
    double? rating,
  }) {
    return Container(
      height: 200,
      width: 200,
      child: Card(
        color: Color.fromARGB(255, 0, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageUrl,
              height: 110,
              width: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(color: Colors.white),
            ),
            if (rating != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 20),
                  SizedBox(width: 4),
                  Text(
                    rating.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

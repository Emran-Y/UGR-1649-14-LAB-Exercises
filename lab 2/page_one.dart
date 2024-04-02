import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Handle back button press
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.upcoming),
                  onPressed: () {
                    // Handle upcoming button press
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    // Handle settings button press
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  '../assets/car.jpg',
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '1975 Porsche 911 Carrera',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.thumb_up),
                      SizedBox(width: 5),
                      Text('0'),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Icon(Icons.comment),
                      SizedBox(width: 5),
                      Text('0'),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Icon(Icons.share),
                      SizedBox(width: 5),
                      Text('Share'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Essential Information',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('1 of 3'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.youtube_searched_for),
                      SizedBox(width: 10),
                      Text(
                        'Year make model VIN',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.edit),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Year : 1975'),
                  Text('Make : Porsche'),
                  Text('Model : 911 Carrera'),
                  Text('VIN : 5894346060410'),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                height: 60,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey, // Specify the color of the border
                      width: 1.0, // Specify the width of the border
                    ),
                  ),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.description),
                    SizedBox(width: 10),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Add your photo widgets here
            ],
          ),
        ),
      ),
    );
  }
}



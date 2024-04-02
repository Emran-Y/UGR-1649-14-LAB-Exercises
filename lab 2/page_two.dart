import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                // Handle back button press
              },
            ),
            Text(
              'Cart',
              style: TextStyle(
                color: Colors.amber[800],
                fontSize: 25,
              ),
            ),
            SizedBox(width: 56), // Adjusting spacing for the back button
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shopping cart',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Verify your quantity and click checkout',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  buildCartItem(),
                  SizedBox(height: 20),
                  buildCartItem(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              color: Colors.orange[50],
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: Text('Proceed to Checkout'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCartItem() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 120,
      decoration: BoxDecoration(
        color: Colors.yellow[50],
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                '../assets/car.jpg',
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Product Title',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  '\$15.00',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.remove),
              Icon(Icons.add),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}


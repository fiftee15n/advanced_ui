import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListingScreen(),
    );
  }
}

class ProductListingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Home - Product Listing",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Greeting Text
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text("Hi, Jahangir Alam Tamal"),
            ),
            SizedBox(height: 10),

            // Categories
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryItem("Fruits"),
                CategoryItem("Vegetables"),
                CategoryItem("Meat"),
                CategoryItem("Spices"),
                CategoryItem("Groceries"),
              ],
            ),
            SizedBox(height: 10),

            // Banner
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Get 15% off your first order!",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Flash Sale
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Flash Sale", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    TimeBox("12"),
                    SizedBox(width: 5),
                    TimeBox("30"),
                    SizedBox(width: 5),
                    TimeBox("30"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),

            // Flash Sale Items
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SaleItem("Honey"),
                SaleItem("Cauliflower"),
              ],
            ),
            SizedBox(height: 10),

            // Fruits Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Fruits", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text("View all", style: TextStyle(color: Colors.green)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Category Item Widget
class CategoryItem extends StatelessWidget {
  final String title;
  CategoryItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(backgroundColor: Colors.grey, radius: 20),
        SizedBox(height: 5),
        Text(title, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}

// Time Box Widget
class TimeBox extends StatelessWidget {
  final String time;
  TimeBox(this.time);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(time, style: TextStyle(color: Colors.white)),
    );
  }
}

// Sale Item Widget
class SaleItem extends StatelessWidget {
  final String title;
  SaleItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 80,
            color: Colors.grey[300],
          ),
          SizedBox(height: 5),
          Text(title),
        ],
      ),
    );
  }
}

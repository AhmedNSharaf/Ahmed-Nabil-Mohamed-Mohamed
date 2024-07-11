// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task3/models/category_model.dart';
import 'package:task3/screens/questions.dart';
import 'package:task3/utils/colors.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: secondaryColor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Text(
          'Category',
          style: TextStyle(color: secondaryColor),
        ),
      ),
      body: Container(
        color: primaryColor,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryWidget(category: categories[index]);
          },
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final CategoryModel category;
  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Questions()),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: thirdColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                category.name,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: secondaryColor),
              ),
            ),

            SizedBox(height: 10), // Adds some space between the text and image
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(category.image),
              ),
            ), // Adds some space between the text and image
          ],
        ),
      ),
    );
  }
}

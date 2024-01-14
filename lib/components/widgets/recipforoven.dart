import 'package:flutter/material.dart';

class RecipBrowsContainer extends StatelessWidget {
  const RecipBrowsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 160,
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/images/burger.jpg'), fit: BoxFit.cover),
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Recipies for your oven",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.orange),
              ),
              child: const Text(
                "Browse",
                style: TextStyle(
                  color: Colors.white,
                  fontSize:
                      20, // Increase the font size to increase the button size
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

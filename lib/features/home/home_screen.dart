
import 'package:flutter/material.dart';
import '../details/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Practice App'),
        backgroundColor: Colors.blue,
        // foregroundColor: Colors.white,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Flutter!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Learn Flutter step by step.',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 25),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Your Flutter Journey Starts Here',
                style: TextStyle(fontSize: 18),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                const Icon(
                  Icons.school,
                  color: Colors.blue,
                  size: 30,
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text('Lesson 2: UI Basics'),
                ),
              ],
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const DetailsScreen(),
                    ),
                  );
                },
                child: const Text('Go to Details'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

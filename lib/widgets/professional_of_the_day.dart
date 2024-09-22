import 'package:flutter/material.dart';
import 'package:sriyog_application/core/app_colors.dart';
import 'package:sriyog_application/widgets/home_page.dart';

class ProfessionalOfTheDay extends StatelessWidget {
  const ProfessionalOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Professional of the Day',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30),
            const CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage('assets/images/professional.png'),
            ),
            const SizedBox(height: 25),
            const Column(
              children: [
                Text(
                  "Pandit",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Ghanashyam Timsina",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Biratnagar",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),

            // Book Now Button with navigation to ChangeCity page
            ElevatedButton.icon(
              onPressed: () {
                // Navigate to ChangeCity page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const HomePage()),
                );
              },
              icon: const Icon(Icons.phone),
              label: const Text('Book Now'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondaryColor,
                foregroundColor: AppColors.primaryColor,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

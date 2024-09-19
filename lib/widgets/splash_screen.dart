import 'package:flutter/material.dart';
import 'package:sriyog_application/core/app_colors.dart';
import 'package:sriyog_application/widgets/change_country.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 120,
              backgroundImage:
                  AssetImage('assets/images/appbar_background.png'),
            ),
            const SizedBox(height: 28),
            const Text(
              'Verified Professional Marketplace',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
                        const SizedBox(height: 16),

            const Text(
              '100K+ Downloads',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  const ChangeCountry()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondaryColor,
                foregroundColor: AppColors.primaryColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              ),
              child: const Text('ENTER', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 40),
            Image.asset(
              'assets/images/powered.png',
              height: 60,
              width: 240,
            ),
            Image.asset(
              'assets/images/arrow.png',
              height: 40,
              width: 320,
            ),
            const Text('Proudly Made in the Cloud',         
         style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Professions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle, size: 40),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contact',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
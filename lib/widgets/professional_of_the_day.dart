import 'package:flutter/material.dart';
import 'package:sriyog_application/core/app_colors.dart';
import 'change_city.dart'; 

class ProfessionalOfTheDay extends StatelessWidget {
  const ProfessionalOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Stack(
          children: [
            Container(
              height: 60,
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/pracas.png'),
                ),
              ),
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'SRIYOG',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'JDRProvince',
                        color: Colors.black),
                  ),
                  Text('| Biratnagar', style: TextStyle(color: AppColors.primaryColor)),
                ],
              ),
              actions: const [
                Icon(Icons.location_on, color: Colors.black),
                Padding(padding: EdgeInsets.only(right: 20))
              ],
            ),
          ],
        ),
      ),
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
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/professional.png'),
            ),
            const SizedBox(height: 20),
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
            const SizedBox(height: 20),

            // Book Now Button with navigation to ChangeCity page
            ElevatedButton.icon(
              onPressed: () {
                // Navigate to ChangeCity page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChangeCity()),
                );
              },
              icon: const Icon(Icons.phone),
              label: const Text('Book Now'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
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

import 'package:flutter/material.dart';
import 'package:sriyog_application/core/app_colors.dart';
import 'package:sriyog_application/widgets/professional_of_the_day.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChangeCountry(),
    );
  }
}

class ChangeCountry extends StatefulWidget {
  const ChangeCountry({super.key});

  @override
  ChangeCountryState createState() => ChangeCountryState();
}

class ChangeCountryState extends State<ChangeCountry> {
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
                  Text('|Change Country', style: TextStyle(color: AppColors.primaryColor)),
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

      // Body content
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/appbar_background.png'),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/india_flag.png',
                    width: 30,
                    height: 20,
                  ),
                  const SizedBox(width: 10),
                  const Text('India'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/nepal_flag.png',
                    width: 30,
                    height: 20,
                  ),
                  const SizedBox(width: 10),
                  const Text('Nepal'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfessionalOfTheDay()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.secondaryColor,
              foregroundColor: AppColors.primaryColor,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            ),
              child: const Text('ENTER', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height: 40),
          Image.asset(
            'assets/images/arrow.png',
            height: 40,
            width: 320,
          ),
          const Text(
            'Connecting work with workers',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 21,
              color: AppColors.primaryColor,
            ),
          ),
        ],
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

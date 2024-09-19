import 'package:flutter/material.dart';
import 'package:sriyog_application/core/app_colors.dart';

class ChangeCity extends StatefulWidget {
  const ChangeCity({super.key});

  @override
  _ChangeCityState createState() => _ChangeCityState();
}

class _ChangeCityState extends State<ChangeCity> {
  final List<String> cities = ['Biratnagar', 'Kathmandu', 'Pokhara', 'Butwal'];
  
  String selectedCity = 'Biratnagar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        automaticallyImplyLeading: false,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/pracas.png'),
              ),
              SizedBox(width: 8), 
              Text(
                'SRIYOG',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'JDRProvince',
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 4),
              Text(
                '| Change City',
                style: TextStyle(color: AppColors.primaryColor),
              ),
            ],
          ),
          actions: const [
            Icon(Icons.location_on, color: Colors.black),
            SizedBox(width: 20),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage('assets/images/appbar_background.png'),
            ),
            const SizedBox(height: 16),

            DropdownButton<String>(
              value: selectedCity,
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.black, fontSize: 18),
              underline: Container(
                height: 2,
                color: AppColors.primaryColor,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  selectedCity = newValue!;
                });
              },
              items: cities.map<DropdownMenuItem<String>>((String city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              ),
              child: const Text('ENTER'),
            ),

            const SizedBox(height: 20),

       Image.asset(
              'assets/images/arrow.png',
              height: 40,
              width: 320,
            ),

            const Text(
              'Connecting Work with Workers',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 19,
                fontWeight: FontWeight.w400,
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

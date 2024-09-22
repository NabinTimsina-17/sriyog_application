import 'package:flutter/material.dart';
import 'package:sriyog_application/core/app_colors.dart';
import 'package:sriyog_application/widgets/professional_of_the_day.dart';

class ChangeCity extends StatefulWidget {
  const ChangeCity({super.key});

  @override
  ChangeCityState createState() => ChangeCityState();
}

class ChangeCityState extends State<ChangeCity> {
  final List<String> cities = ['Biratnagar', 'Kathmandu', 'Pokhara', 'Butwal'];
  
  String selectedCity = 'Biratnagar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage('assets/images/appbar_background.png'),
            ),
            const SizedBox(height: 32),

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
            const SizedBox(height: 32),

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
            const SizedBox(height: 48),

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
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),

    );
  }
}

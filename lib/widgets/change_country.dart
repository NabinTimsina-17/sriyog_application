import 'package:flutter/material.dart';
import 'package:sriyog_application/core/app_colors.dart';
import 'package:sriyog_application/widgets/change_city.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 120,
            backgroundImage: AssetImage('assets/images/appbar_background.png'),
          ),
          const SizedBox(height: 28),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/india_flag.png',
                    width: 60,
                    height: 60,
                  ),
                   const Text('India', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/nepal_flag.png',
                   width: 60,
                    height: 60,
                  ),
                   const Text('Nepal', style:  TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ChangeCity()),
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


    );
  }
}

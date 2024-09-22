import 'package:flutter/material.dart';
import 'package:sriyog_application/core/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Track the selected index of BottomNavigationBar

  // This method handles the tap event for BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Screens for different sections
  static const List<Widget> _pages = [
    HomeScreen(),
    ProfessionScreen(),
    AddScreen(),
    SearchScreen(),
    ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/pracas.png'),
            ),
            const SizedBox(width: 5),
            const Text(
              'SRIYOG | ',
              style: TextStyle(
                  color: AppColors.primaryColor, fontWeight: FontWeight.bold),
            ),
            const Text(
              'New Delhi',
              style: TextStyle(color: AppColors.primaryColor),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.location_on, color: Colors.black),
              onPressed: () {},
            )
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex, // Show the selected screen
        children: _pages, // Load the list of pages
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Currently selected tab
        onTap: _onItemTapped, // Handle tab change
        backgroundColor: Colors.white, // Set a background color for visibility
        selectedItemColor: const Color.fromARGB(255, 75, 75, 75), // Color for the selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Professions'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_phone), label: 'Contact'),
        ],
      ),
    );
  }
}

// The HomeScreen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
        children: [
          Image.asset('assets/images/delhi.png'),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Verified',
                  style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Skilled Professionals',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/plumber.png'),
              Image.asset('assets/images/painter.png'),
              Image.asset('assets/images/electrician.png'),
              Image.asset('assets/images/pandit.png'),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Top Professionals',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Spacing between profiles
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.0), // Adding padding to each profile
                  child: ProfileCard(
                      name: 'Ghanashyam', image: 'assets/images/ghanashyam.png', radius: 38),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.0),
                  child: ProfileCard(
                      name: 'Binod', image: 'assets/images/binod.png', radius: 38),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.0),
                  child: ProfileCard(
                      name: 'Santosh', image: 'assets/images/santosh.png', radius: 38),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.0),
                  child: ProfileCard(
                      name: 'Kripanand', image: 'assets/images/kripanand.png', radius: 38),
                ),
              ],
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/arrow.png',
              height: 30,
              width: 320,
            ),
          ),
          const Center(
            child: Text(
              'Connecting work with workers',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 21,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// The ProfessionScreen
class ProfessionScreen extends StatelessWidget {
  const ProfessionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profession Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// The AddScreen
class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Add New Item Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// The SearchScreen
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Search Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// The ContactScreen
class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Contact Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String image;
  final double radius;

  const ProfileCard({super.key, required this.name, required this.image, this.radius = 30});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(height: 5), 
        Text(name),
      ],
    );
  }
}

import 'package:flutter/material.dart';
// import 'package:welcome/pages/club.dart';
import 'package:welcome/pages/dept.dart';
import 'package:welcome/pages/gallery.dart';
import 'package:welcome/pages/home.dart';

// import 'package:welcome/pages/location.dart';

import 'pages/locations.dart';

void main() => runApp(const MyApp());
// void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  // const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
//  initialRoute: '/',
//       routes: {
//         '/': (context) => const HomePage(),
//         '/second': (context) => const MyWidget(),
//       },

      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  // const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPageIndex = 0;
  // var _currentIndex = 0;
  // static const List<Widget> _widgetOptions = <Widget>[
  //   HomePage(),
  //   MapSample(),

  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body:  _widgetOptions.elementAt(_currentIndex),
      body: <Widget>[
        const HomePage(),
        const DepPage(),
        const GalleryPage()
      ][currentPageIndex],

      floatingActionButton: FloatingActionButton(
        // clipBehavior: ,
        onPressed: () {
          // Navigator.pushNamed(context, '/second');
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MapSample()));
        },
        backgroundColor: const Color.fromARGB(255, 129, 100, 249),
        child: const Icon(
          Icons.location_on_rounded,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,

      bottomNavigationBar: NavigationBar(
        indicatorColor: const Color.fromARGB(255, 141, 121, 219),

        animationDuration: const Duration(milliseconds: 1000),

        // currentIndex: _currentIndex,
        // onTap: (i) => setState(() => _currentIndex = i),
        // selectedItemColor: Colors.white,
        // unselectedItemColor: Colors.grey,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.school,
              color: Colors.white,
            ),
            label: 'Department',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.photo_album_rounded,
              color: Colors.white,
            ),
            label: 'Gallery',
          ),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        backgroundColor: const Color.fromARGB(255, 114, 90, 208),
        elevation: 10,
        //surfaceTintColor: Colors.lime,
        //height: 20,
        //labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      ),
    );
  }
}

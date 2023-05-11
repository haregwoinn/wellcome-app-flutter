import 'package:flutter/material.dart';
import 'package:welcome/email/emailsender.dart';
import 'package:welcome/pages/club.dart';

// import 'package:welcome/pages/dept.dart';
import 'package:welcome/pages/dev.dart';
// import 'package:welcome/pages/home.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple[100],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("assets/bg/wolloai.jpg"),
                      fit: BoxFit.cover)),
              child: Center(
                child: Text(
                  'W O L L O',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text(
                'Clubs',
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(255, 95, 95, 95)),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const FirstPage(
                        // title: 'Houses',
                        ),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.developer_mode),
              title: const Text(
                'Developers',
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(255, 95, 95, 95)),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const ProfileUI(
                        // title: 'Apartments',
                        ),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text(
                'Feedback',
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(255, 95, 95, 95)),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const
                     EmailForm( ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

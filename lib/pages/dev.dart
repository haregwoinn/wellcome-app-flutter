import 'package:flutter/material.dart';
import 'package:welcome/main.dart';
import 'package:welcome/screens/de_hareg.dart';
import 'package:welcome/screens/dev_beza.dart';
import 'package:welcome/screens/dev_fanuel.dart';
import 'package:welcome/screens/dev_fuad.dart';
import 'package:welcome/screens/dev_sewmehon.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          
          children: const [
            ProfileFan(),
            ProfileFuad(),
            ProfileSewmi(),
            ProfileBeza(),
            ProfileHareg()
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 114, 90, 208),
        child: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const MyApp(
                // title: 'Houses',
                ),
          ),
        ),
      ),
    );
  }
}

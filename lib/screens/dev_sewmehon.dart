import 'package:flutter/material.dart';

class ProfileSewmi extends StatelessWidget {
  const ProfileSewmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
        
              Image(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                fit: BoxFit.cover,
                image: const AssetImage('assets/bg/bg_code.jpg'),
              ),
              const Positioned(
                bottom: -60.0,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/svg/f.jpg'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          const ListTile(
            title: Center(
                child: Text(
              'Sewmehon Engda',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            )),
            subtitle: Center(
                child: Text('Native Android & Flutter Developer',
                    style: TextStyle(fontFamily: 'Poppins'))),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.mail,
              color: Colors.white,
            ),
            label: const Text(
              'Hire Me',
              style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
            ),
            // color: Colors.blue,
            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
          const ListTile(
            title: Text('About Me', style: TextStyle(fontFamily: 'Poppins')),
            subtitle: Text(
                'Hi, I\'m Sewmehon Engda from ethiopia.\nI\'m an Android Developer for Company in ethiopia. Over 3 years of Experienced Software Development.\nI have serious passion for UI/UX, and sometimes fullstack. Feel free to check my portfolio on Sewmehonengda.com',
                style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1)),
          ),
        ],
      ),
    );
  }
}

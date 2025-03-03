import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileCard(),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Card'),
        backgroundColor: Color.fromARGB(255, 216, 42, 29),
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(20),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profilepic.jpg'),
                ),
                SizedBox(height: 10),
                Text(
                  'Kartika Adhi Ning Wulan Satunggal',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Mobile App Developer',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Aspiring Mobile App Developer passionate about learning iOS and Android development. Continuously improving skills in API integration, performance optimization, and secure, scalable solutions while exploring emerging technologies to create impactful apps.',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'kartikaadhiningwulan@mail.ugm.ac.id',
                  style: TextStyle(color: Color.fromARGB(255, 143, 28, 20)),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => launch(
                          'https://wa.me/6281252738787'), // WhatsApp link
                      child: SvgPicture.asset(
                        'assets/whatsapp.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => launch(
                          'https://github.com/Kartikaadhi'), // GitHub link
                      child: SvgPicture.asset(
                        'assets/github.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => launch(
                          'https://instagram.com/kartgwn_'), // Instagram link
                      child: SvgPicture.asset(
                        'assets/ig.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

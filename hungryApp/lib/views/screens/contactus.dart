import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
class Contact_Us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
leading: BackButton(
  onPressed:(() => Navigator.pop(context)

        ),
),
        ),
        bottomNavigationBar: ContactUsBottomAppBar(
          companyName: 'Winnie Walter',
          textColor: Colors.white,
          backgroundColor: Colors.teal.shade300,
          email: 'wwm@gmail.com',
          // textFont: 'Sail',
        ),
        backgroundColor: Colors.teal,
        body: 
        Container(
          margin: EdgeInsets.only(top:50),
          child:
        ContactUs(
            cardColor: Colors.white,
            textColor: Colors.teal.shade900,
            logo: AssetImage('assets/images/lc.png'),
            email: 'wwm@gmail.com',
            companyName: 'WWM Company',
            companyColor: Colors.teal.shade100,
            dividerThickness: 2,
            phoneNumber: '+255629967870',
            website: 'https://dit.ac.tz/',
            // githubUserName: 'AbhishekDoshi26',
            // linkedinURL:
            //     'https://www.linkedin.com/in/abhishek-doshi-520983199/',
            tagLine: 'Developer',
            taglineColor: Colors.teal.shade100,
            // twitterHandle: 'AbhishekDoshi26',
            instagram: 'ditso_habari',
            facebookHandle: 'Official.DIT'),
      ),
      ),
    );
  }
}
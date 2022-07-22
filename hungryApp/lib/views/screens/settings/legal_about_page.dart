import 'dart:io';

import '../app_properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final terms_condition = 'https://docs.google.com/document/d/1F9XxlGAmrP_2ey4GIqG63051ysZkCrcUgKnAAwKUq4Q/edit?usp=sharing';
final privacy = 'https://docs.google.com/document/d/1s8mtJ-JqBZ5D6vxDQ_dpEno_Dl2BX77pceezrRXcZ3A/edit?usp=sharing';
final Uri _privacy = Uri.parse('$privacy');
final Uri _terms_condition = Uri.parse('$terms_condition');
class LegalAboutPage extends StatefulWidget {
  @override
  _LegalAboutPageState createState() => _LegalAboutPageState();
}

class _LegalAboutPageState extends State<LegalAboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.black,
          ),
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        title: Text(
          'Settings',
          style: TextStyle(color: darkGrey),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top:24.0,left: 24.0, right: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'Legal & About',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ),
              Flexible(
                child: ListView(
                  children: <Widget>[
                    GestureDetector(
                      onTap:_launchUrl,
                      child:ListTile(
                      title: Text('Terms of Use'),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ),
                    GestureDetector(
                      onTap:_policy,
                    child:ListTile(
                      title: Text('Privacy Policy'),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ),
                    GestureDetector(
                      onTap:(){showAboutDialog(context: context,
                      applicationName: 'Hungry ',
                      applicationIcon: Image.asset('assets/images/lc.png'),
                      //applicationLegalese: "Developed by Winnie Walter",
                      applicationVersion: '1.0'
                      
                      );},
                    child:ListTile(
                      title: Text('License'),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
void _launchUrl() async {
  if (!await launchUrl(_terms_condition)) throw 'Could not launch $_terms_condition';
}
void _policy() async {
  if (!await launchUrl(_privacy)) throw 'Could not launch $_policy';
}
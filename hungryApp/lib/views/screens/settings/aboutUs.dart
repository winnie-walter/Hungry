// ignore_for_file: public_member_api_docs

import 'package:about/about.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'pubspec.dart';



class About_Us extends StatefulWidget {
  const About_Us({Key key}) : super(key: key);
  

  @override
  State<About_Us> createState() => _About_UsState();
  
}

class _About_UsState extends State<About_Us> {
  
  @override
  Widget build(BuildContext context) {
    
    // final theme = Theme.of(context);
    // final isIos = theme.platform == TargetPlatform.iOS ||
    //     theme.platform == TargetPlatform.macOS;

    final aboutPage = AboutPage(
      
      values: {
        'version': '1.0',
        'buildNumber': '1',
        'year': DateTime.now().year.toString(),
        'author': 'Winnie Walter',
      },
      
      title: GestureDetector(child:Icon(Icons.arrow_back_ios),
      onTap: (){
Navigator.pop(context);      },
      ),
      applicationVersion: 'Version {{ version }}, build #{{ buildNumber }}',
      applicationDescription: const Text(
        'Displays an About dialog, which describes the application.',
        textAlign: TextAlign.justify,
      ),
      applicationIcon: Image(image:AssetImage('assets/images/list1.jpg')),
      applicationLegalese: 'Copyright © {{ author }}, {{ year }}',
      children: const <Widget>[
        // MarkdownPageListTile(
        //   filename: 'README.md',
        //   title: Text('View Readme'),
        //   icon: Icon(Icons.all_inclusive),
        // ),
        
        // MarkdownPageListTile(
        //   filename: 'CHANGELOG.md',
        //   title: Text('View Changelog'),
        //   icon: Icon(Icons.view_list),
        // ),
        // MarkdownPageListTile(
        //   filename: 'LICENSE.md',
        //   title: Text('View License'),
        //   icon: Icon(Icons.description),
        // ),
        // MarkdownPageListTile(
        //   filename: 'CONTRIBUTING.md',
        //   title: Text('Contributing'),
        //   icon: Icon(Icons.share),
        // ),
        // MarkdownPageListTile(
        //   filename: 'CODE_OF_CONDUCT.md',
        //   title: Text('Code of conduct'),
        //   icon: Icon(Icons.sentiment_satisfied),
        // ),
        // LicensesPageListTile(
        //   title: Text('Open source Licenses'),
        //   icon: Icon(Icons.favorite),
        // ),
      ],
    );

    // if (isIos) {
    //   return CupertinoApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'About Hungry',
    //     home: aboutPage,
    //     theme: CupertinoThemeData(
    //       brightness: theme.brightness,
    //     ),
    //   );
    // }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'About Hungry',
      home: aboutPage,
      
      theme: ThemeData(),
      darkTheme: ThemeData(brightness: Brightness.dark),
      
    );
  }
}
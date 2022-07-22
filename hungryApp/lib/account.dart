import 'package:hungry/views/screens/contactus.dart';
import 'package:hungry/views/screens/settings/help.dart';
import 'package:hungry/views/screens/settings/helpcenter.dart';

import 'views/screens/app_properties.dart';
import 'views/screens/faq_page.dart';
//import 'views/screens/payment/payment_page.dart';
import 'views/screens/settings/aboutUs.dart';
import 'views/screens/settings/settings_page.dart';
//import 'views/screens/tracking_page.dart';
//import 'views/screens/wallet/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(left: 16.0, right: 16.0, top: kToolbarHeight),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 48,
                  backgroundImage: AssetImage('assets/images/ty.jpeg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Winnie Walter',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                
                ListTile(
                  title: Text('Settings'),
                  subtitle: Text('Privacy and logout'),
                  leading: Image.asset('assets/icons/settings_icon.png', fit: BoxFit.scaleDown, width: 30, height: 30,),
                  trailing: Icon(Icons.chevron_right, color: yellow),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => SettingsPage())),
                ),
                Divider(),
                ListTile(
                  title: Text('Help & Support'),
                  subtitle: Text('Help center and legal support'),
                  leading: Image.asset('assets/icons/support.png'),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: yellow,
                  ),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => Help())),
                ),
                Divider(),
                ListTile(
                  title: Text('FAQ'),
                  subtitle: Text('Questions and Answer'),
                  leading: Image.asset('assets/icons/faq.png'),
                  trailing: Icon(Icons.chevron_right, color: yellow),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => FaqPage())),
                ),
                Divider(),
                 ListTile(
                  title: Text('Contact Us'),
                  subtitle: Text('Contact For More Information'),
                  leading: Icon(Icons.contact_page),
                  trailing: Icon(Icons.chevron_right, color: yellow),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => Contact_Us())),
                ),
                Divider(),
                ListTile(
                  title: Text('Rate US'),
                  subtitle: Text('Show Us Your concern'),
                  leading: Icon(Icons.star),
                  trailing: Icon(Icons.chevron_right, color: yellow),
                  onTap: () => showDialog(
		context: context,
		builder: (BuildContext context) {
					return Expanded(
					child: AlertDialog(
						title: Text('Welcome'),
						content: RatingBar.builder(
   initialRating: 3,
   minRating: 0,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
   itemBuilder: (context, _) => Icon(
     Icons.face,
     color: Colors.amber,
   ),
   onRatingUpdate: (rating) {
     print(rating);
   },
),
						actions: [
						FlatButton(
							textColor: Colors.black,
							onPressed: () {
                Navigator.pop(context);
              },
							child: Text('CANCEL'),
						),
						FlatButton(
							textColor: Colors.black,
							onPressed: () {},
							child: Text('RATE'),
						),
					],
				),
		);
	},


                ),
                ),
                Divider()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

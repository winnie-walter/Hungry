import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({Key key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    var _text;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
                  children: <Widget>[

                    Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(30, 10, 10, 0),
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 22,
                              width: 22,
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ],
                        )),
                       
                    Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextFormField(
                            
                            controller: _text,
                            textAlign: TextAlign.center,
                            //keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              // errorMaxLines: 3,
                              // errorStyle: TextStyle(
                              //     color: Colors.red,
                              //     fontSize: 24,
                              //     fontWeight: FontWeight.bold,
                              //     fontStyle: FontStyle.italic,
                              //     decoration: TextDecoration.lineThrough),
                              // errorText:texterror ? "enter correct password" : null,
                              // suffixIcon: GestureDetector(
                              //   onTap: _toggleLogin,
                              //   child: Icon(
                              //     _obscureTextPassword
                              //         ? Icons.visibility_off
                              //         : Icons.visibility,
                              //     size: 15.0,
                              //     color: Colors.white,
                              //   ),
                              // ),
                              hintText: 'Type keywords tofind answers',
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        
                    ),
                    Column(
          children: [
            Container(
              height: 50,
              margin: EdgeInsets.only(top:100,right: 10),
              decoration:
                  BoxDecoration(color: Colors.white),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 30,
                    // child: Icon(Icons.person),
                  ),
                  Text(
                    'Account and Profile',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(
                  //   width: 140,
                  // ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: Colors.white),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SizedBox(
                    width: 30,
                    // child: Icon(Icons.restore),
                  ),
                  Text(
                    'Troubleshooting',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(
                  //   width: 190,
                  // ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpCenter()));
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: Colors.white),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 30,
                    //child: Icon(Icons.policy),
                  ),
                  Text(
                    'Privacy and security Help',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(
                  //   width: 240,
                  // ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                       //Navigator.push(context, MaterialPageRoute(builder: (context)=>Policy()));
                    },
                  ),
                ],
              ),
            ),
          ],),
                    ],
                ),
    );
  }
}
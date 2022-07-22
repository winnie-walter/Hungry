import 'package:flutter/material.dart';
import 'package:hungry/views/screens/page_switcher.dart';
import 'package:hungry/views/utils/AppColor.dart';
import 'package:hungry/views/widgets/custom_text_field.dart';
import 'package:hungry/views/widgets/modals/login_modal.dart';

class RegisterModal extends StatefulWidget {
  @override
  State<RegisterModal> createState() => _RegisterModalState();
}

class _RegisterModalState extends State<RegisterModal> {
  TextEditingController _text = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _fname = TextEditingController();
  TextEditingController _uname = TextEditingController();
  TextEditingController _address = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _password2= TextEditingController();

  bool text = false;
  bool password =false;
  bool fname = false;
  bool uname = false;
  bool address = false;
  bool phone = false;
  bool password2 = false;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 85 / 100,
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 32, top: 16),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            physics: BouncingScrollPhysics(),
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width * 35 / 100,
                  margin: EdgeInsets.only(bottom: 20),
                  height: 6,
                  decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
                ),
              ),
              // header
              Container(
                margin: EdgeInsets.only(bottom: 24),
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700, fontFamily: 'inter'),
                ),
              ),
              // Form
              
              CustomTextField(title: 'Full Name', hint: 'Your Full Name',validate: fname,controller: _fname, margin: EdgeInsets.only(top: 16)),
              CustomTextField(title: 'username', hint: 'Your username',validate: uname,controller: _uname, ),
              CustomTextField(title: 'Email', hint: 'youremail@email.com',keyboardType: TextInputType.emailAddress,validate: text,controller: _text, ),
              CustomTextField(title: 'Phone Number', hint: '(255)-*******',keyboardType: TextInputType.phone,validate: phone,controller: _phone,),
              CustomTextField(title: 'Address', hint: 'Dar es salaam Tanzania',validate: address,controller: _address, ),
              CustomTextField(title: 'Password', hint: '**********',validate: password,controller: _password, obsecureText: true, margin: EdgeInsets.only(top: 16)),
              CustomTextField(title: 'Retype Password', hint: '**********', validate: password2,controller: _password2, obsecureText: true, margin: EdgeInsets.only(top: 16)),
              // Register Button
              Container(
                margin: EdgeInsets.only(top: 32, bottom: 6),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    if(_text.text.isEmpty || _password.text.isEmpty || _password2.text.isEmpty|| _uname.text.isEmpty|| _fname.text.isEmpty || _phone.text.isEmpty || _address.text.isEmpty ){
                    if(_text.text.isEmpty){
                      setState(() {
                          text =true;
                        });
                    }
                    else{
                      setState(() {
                          text = false;
                          
                        });
                    
                    }

                    if(_password.text.isEmpty){
                      setState(() {
                          password =true;
                        });
                    }
                    else{
                      setState(() {
                          password = false;
                          
                         
                        });
                    
                    }
                     if(_fname.text.isEmpty){
                      setState(() {
                          fname =true;
                        });
                    }
                    else{
                      setState(() {
                          fname = false;
                          
                         
                        });
                    
                    }
                     if(_uname.text.isEmpty){
                      setState(() {
                          uname =true;
                        });
                    }
                    else{
                      setState(() {
                          uname = false;
                          
                         
                        });
                    
                    }
                     if(_phone.text.isEmpty){
                      setState(() {
                          phone =true;
                        });
                    }
                    else{
                      setState(() {
                          phone = false;
                          
                         
                        });
                    
                    }
                     if(_address.text.isEmpty){
                      setState(() {
                          address =true;
                        });
                    }
                    else{
                      setState(() {
                          address = false;
                          
                         
                        });
                    
                    }
                     if(_password2.text.isEmpty){
                      setState(() {
                          password2 =true;
                        });
                    }
                    else{
                      setState(() {
                          password2 = false;
                          
                         
                        });
                    
                    }
                    
                    }
                    else{
                    Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => PageSwitcher()));

                    }
                  },
                  child: Text('Register', style: TextStyle(color: AppColor.secondary, fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'inter')),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    primary: AppColor.primarySoft,
                  ),
                ),
              ),
              // Login textbutton
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                    isScrollControlled: true,
                    builder: (context) {
                      return LoginModal();
                    },
                  );
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Have an account? ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                          style: TextStyle(
                            color: AppColor.primary,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'inter',
                          ),
                          text: 'Log in')
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

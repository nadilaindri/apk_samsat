import 'dart:math';

import 'package:flutter/material.dart';
import 'package:projek_samsat/utils/constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List numberList = [];
  bool def = true;
  int _countryCode = 99;
  bool isAgree = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Constants.yellowColor,
          leading: BackButton(
            color: Colors.black,
          ),
          title: Text(
            'Create a new account',
            style: TextStyle(
              color: Constants.GreyColor,
              fontFamily: 'Poppins',
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          color: Constants.WhiteColor,
          child: Form(
              child: ListView(
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'NIK E-KTP mush be filled';
                  }
                },
                decoration: InputDecoration(
                  errorMaxLines: 2,
                  contentPadding: EdgeInsets.all(17.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                    borderSide:
                        BorderSide(color: Constants.yellowColor, width: 2),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide:
                          BorderSide(color: Constants.RedColor, width: 2)),
                  errorStyle: TextStyle(
                    fontSize: 14.0,
                  ),
                  hintText: 'NIK E-KTP',
                  labelText: 'NIK E-KTP',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Nama mush be filled';
                  }
                },
                decoration: InputDecoration(
                  errorMaxLines: 2,
                  contentPadding: EdgeInsets.all(17.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                    borderSide:
                        BorderSide(color: Constants.yellowColor, width: 2),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide:
                          BorderSide(color: Constants.RedColor, width: 2)),
                  errorStyle: TextStyle(
                    fontSize: 14.0,
                  ),
                  hintText: 'Nama sesuai E-KTP',
                  labelText: 'Nama',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Alamat Email mush be filled';
                  }
                },
                decoration: InputDecoration(
                  errorMaxLines: 2,
                  contentPadding: EdgeInsets.all(17.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                    borderSide:
                        BorderSide(color: Constants.yellowColor, width: 2),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide:
                          BorderSide(color: Constants.RedColor, width: 2)),
                  errorStyle: TextStyle(
                    fontSize: 14.0,
                  ),
                  hintText: 'Email',
                  labelText: 'Alamat Email',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Password mush be filled';
                  }
                },
                decoration: InputDecoration(
                  errorMaxLines: 2,
                  contentPadding: EdgeInsets.all(17.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                    borderSide:
                        BorderSide(color: Constants.yellowColor, width: 2),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide:
                          BorderSide(color: Constants.RedColor, width: 2)),
                  errorStyle: TextStyle(
                    fontSize: 14.0,
                  ),
                  hintText: 'Password',
                  labelText: 'Password',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Confirm Password mush be filled';
                  }
                },
                decoration: InputDecoration(
                  errorMaxLines: 2,
                  contentPadding: EdgeInsets.all(17.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                    // borderSide:
                    //     BorderSide(color: Constants.yellowColor, width: 2),
                  ),
                  // errorBorder: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  //     borderSide:
                  //         BorderSide(color: Constants.RedColor, width: 2)),
                  errorStyle: TextStyle(
                    fontSize: 14.0,
                  ),
                  hintText: 'Confirm Password',
                  labelText: 'Confirm Password',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.number,
                textCapitalization: TextCapitalization.none,
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  labelText: '85887042162',
                  prefix: SizedBox(
                    height: 22.0,
                    width: 11.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          focusColor: Constants.WhiteColor,
                          autofocus: true,
                          value: _countryCode,
                          items: numberList.map((value) {
                            return DropdownMenuItem(
                              child: Text(value['Calling Code']),
                            );
                          }).toList(),
                          onChanged: (value) {
                            def = false;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                ),
                // validator: (value) => state.isValid,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 24.0,
                    width: 24.0,
                    child: Checkbox(
                      value: isAgree,
                      onChanged: (value) => setState(() => isAgree = !isAgree),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "Agree to terms and conditions",
                    style: TextStyle(
                      color: Constants.GreyColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 12.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Register'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  primary: Constants.yellowColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0)),
                ),
              )
            ],
          )),
        ));
  }
}

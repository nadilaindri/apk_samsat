import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projek_samsat/screens/regiter.dart';
import 'package:projek_samsat/utils/constants.dart';
import 'package:flutter/gestures.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  GlobalKey<FormState> _loginKey = GlobalKey<FormState>();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  bool _isHidePassword = true;
  bool _isRememberMe = false;

  _tooglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  color: Constants.BackgroundColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Image.asset(
                        'assets/login-page.png',
                        height: 130,
                        width: 130,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Form(
                  key: _loginKey,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 33, vertical: 26),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Login to continue',
                          style: TextStyle(
                              color: Constants.GreyColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        TextFormField(
                          controller: emailCtrl,
                          keyboardType: TextInputType.text,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Email must be filled!';
                            }
                          },
                          decoration: const InputDecoration(
                              errorMaxLines: 2,
                              contentPadding: EdgeInsets.all(17.0),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(
                                      color: Constants.yellowColor, width: 2)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(
                                      color: Constants.RedColor, width: 2)),
                              errorStyle: TextStyle(
                                fontSize: 10.0,
                              ),
                              hintText: 'example@gmail.com',
                              labelText: 'Email'),
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        TextFormField(
                          controller: passwordCtrl,
                          keyboardType: TextInputType.text,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          textCapitalization: TextCapitalization.none,
                          obscureText: _isHidePassword,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Password must be filled!';
                            }
                          },
                          decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  _tooglePasswordVisibility();
                                },
                                child: Icon(_isHidePassword
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined),
                              ),
                              errorMaxLines: 2,
                              contentPadding: const EdgeInsets.all(17.0),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(
                                      color: Constants.yellowColor, width: 2)),
                              errorBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(
                                      color: Constants.RedColor, width: 2)),
                              errorStyle: const TextStyle(
                                fontSize: 10.0,
                              ),
                              hintText: 'Password',
                              labelText: 'Password'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: Checkbox(
                                    value: _isRememberMe,
                                    onChanged: (value) => setState(
                                        () => _isRememberMe = !_isRememberMe),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 7.0),
                                ),
                                const Text(
                                  'Remember Me',
                                  style: TextStyle(
                                      color: Constants.GreyColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'Poppins'),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                RichText(
                                    text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                      text: 'Forgot Password?',
                                      style: TextStyle(
                                          color: Constants.GreyColor,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0,
                                          fontFamily: 'Poppins'))
                                ]))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Constants.WhiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: 130,
                                vertical: 15,
                              ),
                              primary: Constants.yellowColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0))),
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Constants.GreyColor,
                              fontWeight: FontWeight.w300,
                              fontSize: 14.0,
                              fontFamily: 'Poppins',
                            ),
                            children: [
                              TextSpan(text: "Don't have account? "),
                              TextSpan(
                                text: 'Register',
                                style: TextStyle(
                                  color: Constants.yellowColor,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            RegisterPage(),
                                      ),
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

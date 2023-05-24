import 'package:flutter/material.dart';
import 'package:projek_samsat/screens/info_kendaraan/add-info-kendaraan.dart';
import 'package:projek_samsat/screens/info_kendaraan/kendaraan-info.dart';
import 'dart:async';

import 'package:projek_samsat/screens/login.dart';
import 'package:projek_samsat/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const AddInfoKendaraan()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.WhiteColor,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Image.asset(
          'assets/logo-samsat.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}

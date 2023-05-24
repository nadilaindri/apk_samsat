import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class CustomNoData extends StatelessWidget {
  const CustomNoData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.WhiteColor,
      child: Center(
        child: Text(
          'No Data',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ),
    );
  }
}

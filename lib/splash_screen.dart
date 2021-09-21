import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    AssetImage logoAsset = AssetImage('assets/images/logo2.png');
    Image image = Image(
        image: logoAsset, width: deviceSize.width, height: deviceSize.height);
    return Scaffold(
      body: Container(
        child: image,
      ),
    );
  }
}

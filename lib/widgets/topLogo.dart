import 'package:flutter/material.dart';

class Logo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Image(
        image: AssetImage('assets/iconos/logo.png'),
        width: size.width*0.55,
      ),
    );
  }
}
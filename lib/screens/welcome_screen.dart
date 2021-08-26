import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:natura/utils/constantes.dart';

class WelcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _Carousel(),
          _Botones()
        ],
      ),
    );
  }
}

class _Botones extends StatelessWidget {
  final estilos = EstilosApp();
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 0,
      right: 0,
      child: Row(
        children: [
          SizedBox(width: 5,),
          Expanded(child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, 'login'); }, child: estilos.buttonChild(texto: 'Ingresa', blanco: true), style: estilos.buttonStyle(blanco: true),)),
          Expanded(child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, 'register_1'); }, child: estilos.buttonChild(texto: 'Regístrate', blanco: true), style: estilos.buttonStyle(blanco: true),)),
          SizedBox(width: 5,),
        ],
      ),
    );
  }
}

class _Carousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CarouselSlider(
      options: CarouselOptions(
        height: size.height,
        viewportFraction: 1,
        enableInfiniteScroll: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        scrollDirection: Axis.horizontal
      ),
      items: [
        Container(
          width: size.width,
          height: size.height,
          color: Colors.blue,
        ),
        Container(
          width: size.width,
          height: size.height,
          color: Colors.red,
        ),
        Container(
          width: size.width,
          height: size.height,
          color: Colors.green,
        ),
      ],
    );
  }
}
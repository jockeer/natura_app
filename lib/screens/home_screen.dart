import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:natura/utils/constantes.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage('assets/img/banner1.png')),
            _Puntos(),
            Expanded(child: _Logros()),
            _Ranking(),
            SizedBox(height: 10,),
            
            _Progreso()
          ],
        ),
      ),
    );
  }
}

class _Ranking extends StatelessWidget {
  final colores = ColoresApp();

  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30,top: 15, bottom: 5),
          child: Text('RANKING', style: TextStyle( fontWeight: FontWeight.w900, color: colores.naranja ),),
        ),
        
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: size.width,
              height: size.height*0.08,
              color: colores.naranja,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text('4', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ) ,),
                    SizedBox(width: 5,),
                    Icon(Icons.person_rounded,color: Colors.white,),
                    SizedBox(width: 5,),
                    Text('Daniel Gorianz', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ) ,),
                    Expanded(child: Container()),
                    Text('2000', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ) ,)

                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _Progreso extends StatelessWidget {
  final estilos = EstilosApp();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        color: ColoresApp().naranja,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric( horizontal: 30 ),
              child: Row(
                children: [
                  Expanded(
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.white,
                      color: Colors.green,
                      valueColor: AlwaysStoppedAnimation(Colors.green),
                      minHeight: 10,
                      value: 0.4,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Image(image: AssetImage('assets/iconos/botellaBlanca.png'), width: size.width*0.1,)
                ],
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: estilos.buttonStyle(blanco: true),
              child: estilos.buttonChild(texto: 'Canjea tu pasaje',blanco: true),
              onPressed: null,
            ),
            SizedBox(height: 10,),
          ],
        ),
      );
  }
}

class _Logros extends StatelessWidget {
  final colores = ColoresApp();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30,top: 15, bottom: 5),
          child: Text('LOGROS', style: TextStyle( fontWeight: FontWeight.w900, color: colores.naranja ),),
        ),
        CarouselSlider(
          options: CarouselOptions(
            height:  size.height*0.13,
            viewportFraction: 0.5,
            enableInfiniteScroll: false,
            initialPage: 1,
            disableCenter: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal
          ),
          items: [
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
          ],
        ),
        // Container(
        //   width: size.width,
        //   height: size.height*0.10,
        //   color: Colors.red,
        // )
      ],
    );
  }
}

class _Puntos extends StatelessWidget {
  final puntos = ['1','2','4','2','4'];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.26,
      width: double.infinity,
      color: Colors.black,
      child: Container(

        margin: EdgeInsets.all(5),
        width: size.width,
        height: double.infinity,
        color: Color(0xff4E5156),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('PUNTOS ACUMULADOS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                Image(image: AssetImage('assets/iconos/botellaNaranja.png'), width: 20,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: puntos.map((e){
                return Container(
                  height: size.height*0.16,
                  width: size.width*0.14,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/img/tablero.png'), fit: BoxFit.fill)
                  ),
                  child: Text(e, style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white, fontSize: size.width*0.15),),

                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
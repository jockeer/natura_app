import 'package:flutter/material.dart';

class DatosConstantes{
  String dominio = '10.0.2.2:8080';
}

class ColoresApp{
  Color naranja = Color(0xffFF6501);
  // Color plomo = Color(0xffB5B5B2);
}

class EstilosApp{

  ButtonStyle buttonStyle({ bool blanco = false }){
    return ElevatedButton.styleFrom(
        primary: (blanco)? Colors.white : ColoresApp().naranja,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        )
    );
  }

  Padding buttonChild({required String texto, double size = 18.0, double ph=20.0, double pv=10.0, bool blanco = false }){
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: ph,vertical: pv),
        child: Text(texto,style: TextStyle(fontSize: size, fontWeight: FontWeight.bold, color: (blanco)?ColoresApp().naranja:Colors.white ),),
    );
  }

  InputDecoration inputDecoration({required String hintText, double padingTop = 0.0}){
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: padingTop, horizontal: 15.0),
      hintText: hintText,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black26),borderRadius: BorderRadius.circular(50.0)),
      filled:true,
      fillColor: Colors.white
    );
  }

  Padding inputLabel({required String label, bool obligatorio = false}){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 15.0
      ), 
      child: Row(
        children: [
          Text(label,style: TextStyle(fontWeight: FontWeight.bold, color: ColoresApp().naranja),),
          Text((obligatorio)?' *':'',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.red),),
        ],
      )
    );
  }
  
}
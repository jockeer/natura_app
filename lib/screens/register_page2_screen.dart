import 'package:flutter/material.dart';
import 'package:natura/utils/constantes.dart';

class RegisterPage2Screen extends StatelessWidget {
  final GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final FocusScopeNode focus = FocusScope.of(context);
        if (!focus.hasPrimaryFocus && focus.hasFocus) return  FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: ListView(
            children: [
              _Info(),
              _Formulario( formState: formState )
            ],
          ),
        ),
      ),
    );
  }
}
class _Info extends StatelessWidget {
  final colores = ColoresApp();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          Text('INGRESA INFORMACIÓN ADICIONAL', style: TextStyle(fontWeight: FontWeight.bold, color: colores.naranja),),
          SizedBox(height: 10,),
          Text('Vamos a necesitar alguna información tuya para continuar con el registro', textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}

class _Formulario extends StatelessWidget {
  
  final GlobalKey<FormState> formState;
  final estilos = EstilosApp();
  _Formulario({ required this.formState });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Form(
        child: Column(
          children: [
            estilos.inputLabel(label: 'Nombre (s)', obligatorio: true),
            TextFormField(
              decoration: estilos.inputDecoration(hintText: 'nombre'),
            ),
            estilos.inputLabel(label: 'Apellido (s)', obligatorio: true),
            TextFormField(
              decoration: estilos.inputDecoration(hintText: 'apellido'),
            ),
            estilos.inputLabel(label: 'Correo', obligatorio: true),
            TextFormField(
              decoration: estilos.inputDecoration(hintText: 'email'),
            ),
            estilos.inputLabel(label: 'Password', obligatorio: true),
            TextFormField(
              obscureText: true,
              decoration: estilos.inputDecoration(hintText: 'contraseña'),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: estilos.buttonStyle(),
              child: estilos.buttonChild(texto: 'siguiente'),
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, 'login', ModalRoute.withName('welcome'));
              },
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart' as intl; //não esquecer de colocar

void main() {
  String nome = 'John';
  var date = DateTime.now();
  var newDate = intl.DateFormat.EEEE('pt-BR').format(date);
  initializeDateFormatting('pt-BR', null);

  var timeNow = DateTime.now().hour;
  String greetingMessage() {
    if (timeNow <= 12) {
      return '\nBom Dia';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      return '\nBoa Tarde!';
    } else if ((timeNow > 16) && (timeNow < 19)) {
      return '\nBoa Noite!';
    } else {
      return '\nBoa Noite!';
    }
  }

  runApp(Padding(
    padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
    child: Center(
      child: RichText(
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          text: TextSpan(
              text: 'Olá, ',
              style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  backgroundColor: Colors.black12),
              children: <TextSpan>[
                TextSpan(
                    text: '$nome',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 35.0,
                      //decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      decorationStyle: TextDecorationStyle.wavy,
                    )),
                TextSpan(
                    text: ' $nome',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 35.0,
                      //decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      decorationStyle: TextDecorationStyle.wavy,
                    )),
                TextSpan(
                    text: '\nHoje é $newDate',
                    style: TextStyle(
                      color: Colors.red,
                      backgroundColor: Colors.white,
                      fontSize: 35.0,
                    )),
                TextSpan(text: greetingMessage()),
                TextSpan(
                    text:
                        '\n\nHoje você terá que escrever um aplicativo em Flutter.'
                        'O aplicativo deverá imprimir um texto na tela.'
                        'O texto possui trechos com estilos diferentes.',
                    style: TextStyle(
                      color: Colors.white,
                      //backgroundColor: Colors.white,
                      fontSize: 20.0,
                    )),
                TextSpan(
                    text: '\n ',
                    style: TextStyle(
                      color: Colors.black,
                      //backgroundColor: Colors.white,
                      fontSize: 70.0,
                    )),
                TextSpan(
                    text: '\nBoa Prática!',
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      //backgroundColor: Colors.white,
                      fontSize: 20.0,
                    )),
                TextSpan(
                    text: '\n=',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      //backgroundColor: Colors.white,
                      fontSize: 20.0,
                    )),
                TextSpan(
                    text: 'J',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      //backgroundColor: Colors.white,
                      fontSize: 20.0,
                    )),
                TextSpan(
                    text: 'G',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      //backgroundColor: Colors.white,
                      fontSize: 20.0,
                    )),
              ])),
    ),
  ));
}

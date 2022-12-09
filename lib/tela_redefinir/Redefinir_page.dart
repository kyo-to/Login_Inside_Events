// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/tela_login/login_page.dart';

// ignore: camel_case_types
class Redefinir_page extends StatefulWidget {
  const Redefinir_page({super.key});

  @override
  State<Redefinir_page> createState() => _Redefinir_pageState();
}

// ignore: camel_case_types
class _Redefinir_pageState extends State<Redefinir_page> {
  @override
  Widget build(BuildContext context) => 
  Scaffold(  
      backgroundColor: const Color.fromARGB(209, 255, 255, 255),
      body: SingleChildScrollView( 
        child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 25, right: 43),
        child: Column(children: <Widget>[
          Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back, //seta de volta
                    size: 30,
                    color: Color.fromARGB(255, 32, 79, 122),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Login_page()));
                  },
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Redefinir Senha !',
                style: GoogleFonts.inter(
                    fontSize: 24, color: const Color.fromRGBO(43, 79, 113, 1)),
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    // os textos tem esse espaçamento mesmo que é para alinhar
                    '   Eita! Esqueceu sua senha ? \n      insira seu endereço de \n          email ou número e \n           enviaremos uma \n      mensagem para você \n                altera-lá !',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Endereço de e-mail ou número',
                    style: GoogleFonts.inter(fontSize: 20),
                  ))
            ],
          ),
          TextFormField(
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                  ),
                  hintText: ('Digite seu e-mail ou telefone'),
                  labelStyle:
                      GoogleFonts.inter(color: Colors.black, fontSize: 23),
                  hintStyle: GoogleFonts.inter(fontSize: 18))),
          const SizedBox(
            height: 25,
          ),
          Column(
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Confirme',
                    style: GoogleFonts.inter(fontSize: 20),
                  ))
            ],
          ),
          TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                  ),
                  hintText: ('Confirme seu e-mail ou telefone'),
                  hintStyle: GoogleFonts.inter(fontSize: 18))),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: <Widget>[
              Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    child: (Text(
                      'Não recebi, reenviar !',
                      style: GoogleFonts.inter(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        color: const Color.fromARGB(255, 13, 67, 110),
                      ),
                    )),
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 250,
            child: Image.asset(
              'assets/images/Logo_in.png',
            ),
          ),
        ]),
      ),
      )
    );
}

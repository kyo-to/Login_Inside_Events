import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/tela_cadastro/Cadastro_page.dart';
import 'package:inside_events/tela_redefinir/Redefinir_page.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  String email = ''; //Variaveis para o cadastro do login
  String senha = ''; //Variaveis para o cadastro do login
  //senha para entrar no App = 123
  //email para entrar no app = dev@etec.com

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( 
      child: Padding(
        padding:  EdgeInsets.only(top: 30, left: 25, right: 43),
        child: Column(children: <Widget>[
          SizedBox(
            height: 230,
            child:
                Image.asset('assets/images/Logo_in.png'), // Logo inside events
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Endereço de E-mail',
                    style: GoogleFonts.inter(fontSize: 20),
                  ))
            ],
          ),
          TextFormField(
              onChanged: (text) {
                email = text;
              },
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
                  hintText: ('Digite seu E-mail'),
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
                    'Senha',
                    style: GoogleFonts.inter(fontSize: 20),
                  ))
            ],
          ),
          TextFormField(
              onChanged: (text) {
                senha = text;
              },
              autofocus: true,
              obscureText: true,
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
                  hintText: ('Digite sua senha'),
                  hintStyle: GoogleFonts.inter(fontSize: 18))),
          Column(
            children: <Widget>[
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Redefinir_page()));
                    },
                    child: (Text(
                      'esqueceu sua senha ?',
                      style: GoogleFonts.inter(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        color: const Color.fromARGB(255, 13, 67, 110),
                      ),
                    )),
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(20)),
                    foregroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 13, 67, 110)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(width: 1.0, color: Colors.grey),
                      ),
                    )),
                onPressed: () {
                  if (email == 'dev@etec.com' && senha == '123') {
                    ('ta tudo certin');
                    //Aqui é o login para entrar no app
                    //Caminho para a troca de tela abaixo
                    //Navigator.of(context).push(MaterialPageRoute(e
                    //builder: (context) => "Pagina para prossegir"()));
                  } else {
                    ('erro');
                  }
                },
                child: const Text(
                  'Entre',
                  style: TextStyle(
                    height: 1.0,
                    fontSize: 30,
                  ),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Não tem uma conta?',
                style: GoogleFonts.inter(fontSize: 18, color: Colors.black),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Cadastro_page()));
                    },
                    child: Text(
                      'Cadastre-se',
                      style: GoogleFonts.inter(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        color: const Color.fromRGBO(43, 79, 113, 1),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ou ',
                style: GoogleFonts.inter(
                  fontSize: 18,
                ),
              ),
              Text(
                'conecte-se em outras contas',
                style: GoogleFonts.inter(
                    decoration: TextDecoration.underline,
                    fontSize: 18,
                    color: const Color.fromRGBO(43, 79, 113, 1)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo_facebook.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/images/logo_google.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/images/logo_twitter.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ))
        ]),
      ),
      )
    );
  }
}

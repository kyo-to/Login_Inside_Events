// ignore_for_file: file_names
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/tela_login/login_page.dart';

// ignore: camel_case_types
class Cadastro_page extends StatefulWidget {
  const Cadastro_page({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Cadastro_pageState createState() => _Cadastro_pageState();
}

// ignore: camel_case_types
class _Cadastro_pageState extends State<Cadastro_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 43,
        right: 53,
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
              height: 220,
              child: Image.asset(
                  'assets/images/Logo_in.png')), //Logo inside events
          Text('Crie sua conta e entre sempre',
              style: GoogleFonts.inter(
                  fontSize: 18, color: (const Color.fromRGBO(63, 63, 63, 1)))),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Edereço de E-mail',
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
                hintText: ('Digite seu E-mail'),
                hintStyle: GoogleFonts.inter(fontSize: 18),
              )),
          const SizedBox(
            height: 25,
          ),
          Column(
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Número de telefone',
                    style: GoogleFonts.inter(fontSize: 20),
                  ))
            ],
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
              ),
              hintText: ('+55'),
              hintStyle: GoogleFonts.inter(fontSize: 18),
            ),
          ),
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
                hintStyle: GoogleFonts.inter(fontSize: 18),
              )),
          const SizedBox(
            height: 25,
          ),
          Column(
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Repita sua senha',
                    style: GoogleFonts.inter(fontSize: 20),
                  ))
            ],
          ),
          TextFormField(
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
                hintStyle: GoogleFonts.inter(fontSize: 18),
              )),
          const SizedBox(
            height: 28,
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
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            title: Text(
                              // os textos tem esse espaçamento mesmo que é para alinhar
                              '        Enviamos um código de \n             confirmação para o \n número +55 (00)xxxx-xx00 para \n         o término do cadastro',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                              ),
                            ),
                            content: const Padding(
                              padding: EdgeInsets.fromLTRB(100, 0, 20, 0),
                              child: TextField(
                                autofocus: true,
                                maxLength: 5,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  counterText: '',
                                  hintText: "Digite aqui",
                                ),
                              ),
                            ),
                            actions: <Widget>[
                              Column(
                                children: [
                                  Center(
                                    child: TextButton(
                                      onPressed: () {
                                        CoolAlert.show(
                                          context: context,
                                          type: CoolAlertType.success,
                                          text:
                                              ('Confirmamos que é você, \n tudo certo por aqui !'),
                                          confirmBtnText: 'Prosseguir',
                                          backgroundColor: Colors.white,
                                          onConfirmBtnTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Login_page()));
                                          },
                                        );
                                      },
                                      child: Text(
                                        'Continuar',
                                        style: GoogleFonts.inter(
                                          //decoration: TextDecoration.underline,
                                          fontSize: 18,
                                          color: const Color.fromRGBO(
                                              43, 79, 113, 1),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                  child: TextButton(
                                onPressed: () {
                                  setState(() {});
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'Não recebi o Código',
                                  style: GoogleFonts.inter(
                                    decoration: TextDecoration.underline,
                                    fontSize: 18,
                                    color: const Color.fromRGBO(43, 79, 113, 1),
                                  ),
                                ),
                              ))
                            ]);
                      });
                },
                child: Text(
                  'Cadastre-se',
                  style: GoogleFonts.inter(
                      height: 1.0,
                      fontSize: 30,
                      color: (const Color.fromRGBO(43, 79, 113, 1))),
                )),
          )
        ],
      ),
    )));
  }
}

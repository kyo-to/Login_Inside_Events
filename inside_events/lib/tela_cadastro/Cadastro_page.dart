import 'package:flutter/material.dart';

class Cadastro_page extends StatefulWidget {
  const Cadastro_page({Key? key}) : super(key: key);

  @override
  _Cadastro_pageState createState() => _Cadastro_pageState();
}

class _Cadastro_pageState extends State<Cadastro_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 43, right: 53, bottom: 23),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 112,
                width: 112,
                child: Image.network('https://picsum.photos/250?image=9'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Crie sua conta e entre sempre',
                  style: TextStyle(fontSize: 18,
                  color: (Color.fromRGBO(63, 63, 63, 1))
                  )),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                      ),
                      labelText: ('Endereço de Email'),
                      hintText: ('Digite seu E-mail'),
                      labelStyle: TextStyle(color: Colors.black))),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                    ),
                    labelText: ('numero de telefone'),
                    hintText: ('55+'),
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                      ),
                      labelText: ('Senha'),
                      hintText: ('Digite sua senha'),
                      labelStyle: TextStyle(color: Colors.black))),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                      ),
                      labelText: ('Repita a sua senha'),
                      hintText: ('Digite sua senha'),
                      labelStyle: TextStyle(color: Colors.black))),
              const SizedBox(
                height: 28,
              ),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(10)),
                        foregroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 13, 67, 110)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(width: 1.0, color: Colors.grey),
                          ),
                        )),
                    onPressed: () {},
                    child: const Text(
                      'Cadastre-se',
                      style: TextStyle(
                        height: 1.0,
                        fontSize: 30,
                        color: (Color.fromRGBO(43, 79, 113, 1))
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

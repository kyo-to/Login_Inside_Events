// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'package:flutter/material.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 40, right: 40),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 150,
                width: 150,
                child: Image.network('https://picsum.photos/250?image=9'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Crie sua conta e entre sempre',
                  style: TextStyle(fontSize: 20)),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      labelText: ('Endereço de Email'),
                      hintText: ('Digite seu email'),
                      labelStyle: TextStyle(color: Colors.black))),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    labelText: ('numero de telefone'),
                    hintText: ('insira o numero'),
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
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      labelText: ('senha'),
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
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      labelText: ('repita a sua senha'),
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

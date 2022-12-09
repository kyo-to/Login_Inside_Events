import 'package:flutter/material.dart';
import 'package:inside_events/tela_cadastro/Cadastro_page.dart';
import 'package:inside_events/tela_login/Login_page.dart';
import 'package:inside_events/tela_redefinir/Redefinir_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login_page(),
    );
  }
}
// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " Mi App",
      home: Home(
        title: 'Login',
      ),
    );
  }
}

class Home extends StatefulWidget {
  final String title;

  const Home({super.key, required this.title});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(
              "https://c.wallhere.com/photos/4f/3d/1080x1920_px_Android_L_Material_Style_minimalism-1196606.jpg!d"),
          fit: BoxFit.cover),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          nombre(),
          campoUsuario(),
          campoClave(),
          botonEntrar(),
        ],
      ),
    ),
  );
}

Widget nombre() {
  return Text(
    "Sing in",
    style: TextStyle(color: Colors.white, fontSize: 35.0),
  );
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.blueGrey,
        filled: true, // esto es necesario para que se coloree el fondo
      ),
    ),
  );
}

Widget campoClave() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.blueGrey,
        filled: true, // esto es necesario para que se coloree el fondo
      ),
    ),
  );
}

Widget botonEntrar() {
  return Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: <Color>[
          Color(0xFF0D47A1),
          Color(0xFF1976D2),
          Color(0xFF42A5F5),
        ],
      ),
    ),
    child: TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.blueGrey,
        padding: const EdgeInsets.all(6.0),
        // textStyle: const TextStyle(fontSize: 5.0),
      ),
      onPressed: () {},
      child: const Text(
        "Enter",
        style: TextStyle(color: Colors.white, fontSize: 25.0),
      ),
    ),
  );
}

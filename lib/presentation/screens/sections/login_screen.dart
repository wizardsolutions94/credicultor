// ignore_for_file: camel_case_types

import 'package:credicultor/presentation/screens/sections/profile_screen.dart';
import 'package:credicultor/presentation/screens/sections/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Color(0xffA0153E),
            Color(0xff891652),
            Color(0xffC40C0C),
            Color(0xffD20062),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
            ),
        ),
        child: SafeArea(
          child: Center(
          child: SingleChildScrollView(
              child: Column(
              children: [
                const Icon(Icons.audiotrack_outlined,
                size: 150,
                color: Color(0xffF6F5F2),
                ),
                const SizedBox(height: 20),

                Text('Credicultor', 
                style: TextStyle(
                  fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Donde tu eres el protagonista", 
                  style: TextStyle(
                    fontSize: 18, 
                    color: Colors.white),
                    ),
                    const SizedBox(height: 30),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        decoration: BoxDecoration (
                          color: const Color(0xffBB2525), border: 
                          Border.all(color: Colors.white), 
                          borderRadius: BorderRadius.circular(15) ) ,
                        child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Email"),
                            ),
                            ),
                      ),
                    ),
                    const SizedBox(height: 10),

                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        decoration: BoxDecoration (
                          color: const Color(0xffBB2525), border: 
                          Border.all(color: Colors.white), 
                          borderRadius: BorderRadius.circular(15) ) ,
                        child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Contraseña"),
                            ),
                            ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: GestureDetector( onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const profilescreen(),
                        ),
                        );
                      },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(color:  const Color(0xffF8F0E5),
                          borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Text('Iniciar Sesión',
                            style: TextStyle(
                              fontWeight: FontWeight.bold),                          
                              ),
                          ),
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: GestureDetector( onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const registerscreen(),
                        ),
                        );
                      },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(color:  const Color(0xffF8F0E5),
                          borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Text('Registrar',
                            style: TextStyle(
                              fontWeight: FontWeight.bold),                          
                              ),
                          ),
                        ),
                      ),
                    )

                ],
            ),
            ),
            ),
            ),
        
        ),
    );
  }
}
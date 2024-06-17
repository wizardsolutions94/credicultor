// ignore_for_file: camel_case_types

import 'package:credicultor/presentation/screens/sections/home_screen.dart';
import 'package:credicultor/presentation/screens/sections/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class registerscreen extends StatelessWidget {
  const registerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.person_2_rounded), 
        onPressed: () { Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const homescreen() ),
        ); 
        },
        ),
        backgroundColor: const Color.fromARGB(255, 93, 2, 4),
        centerTitle: true,
        title: const Text ('Registrar', style: TextStyle(fontSize: 25, color: Colors.white ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(left: 10, top: 50, right: 10),
        child: TextField(decoration: InputDecoration(
                  hintText: 'Nombre',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                  ),
                  ),       
                  ),
                  ),
            Padding(padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: TextField(decoration: InputDecoration(
                  hintText: 'Apellido',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                  ),
                  ),       
                  ),
                  ),

            Padding(padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: TextField(decoration: InputDecoration(
                  hintText: 'Cedula de Identidad',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                  ),
                  ),       
                  ),
                  ),

            Padding(padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: TextField(decoration: InputDecoration(
                  hintText: 'Número telefonico',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                  ),
                  ),       
                  ),
                  ),

            Padding(padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: TextField(obscureText: true,
        decoration: InputDecoration(
                  hintText: 'Contraseña',                  
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                  ),
                  ),       
                  ),
                  ),      
              Padding(padding: const EdgeInsets.all(20),
              child: ElevatedButton(onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => const profilescreen(),),);
              },
              child: const Text('Registrar'),
              ),
              ),            
          ],
       
      ),
        
       
    ),
    );
  }
}
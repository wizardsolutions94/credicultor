// ignore_for_file: camel_case_types

import 'package:credicultor/presentation/screens/sections/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class profilescreen extends StatelessWidget {
  const profilescreen({super.key});

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
        title: const Text ('Perfil', style: TextStyle(fontSize: 25, color: Colors.white ),),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Bienvenido', style: TextStyle(fontSize: 60,fontWeight: FontWeight.w100 ) ),
              Text('Aqui puedes revisar tu historial', style: TextStyle( fontSize: 15))
              ],
              ),
              ),
       
        );
  }
}

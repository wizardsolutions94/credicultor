import 'package:credicultor/presentation/screens/sections/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        leading: IconButton(
          icon: const Icon(Icons.person_2_rounded), 
        onPressed: () { Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const loginpage() ),
        ); 
        },
        ),
        backgroundColor:  Color.fromARGB(255, 93, 2, 4),
        centerTitle: true,
        title: const Text ('Credicultor', style: TextStyle(fontSize: 25, color: Colors.white ),),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Bienvenido', style: TextStyle(fontSize: 60,fontWeight: FontWeight.w100 ) ),
              Text('Con nosotros el futuro de la cultura esta asegurado', style: TextStyle( fontSize: 15))
              ],
              ),
              ),
           
        );
  }
}
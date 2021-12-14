

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _username = TextEditingController();
final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              child: Image.asset('assets/successful agricultural_1536x1536_400.png'),
            ),
            Padding(padding: const EdgeInsets.only( left: 50, right: 50, bottom: 10,
            ),
            child: TextFormField(
              controller: _username,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 24,
              ),
              cursorColor: Colors.green,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green))),
            ),
            ),
            Padding(padding: const EdgeInsets.only( left: 50, right: 50, bottom: 10,
            ),
            child: TextFormField(
              controller: _password,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 24,
              ),
              cursorColor: Colors.green,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green))),
            ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1.5,
              height: MediaQuery.of(context).size.height/15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.green[200]
              ),
              
              child: MaterialButton(
                onPressed:  (){
                  print('logIn button');
                },
                child: const Text('Log in'),
                
              ),
            )
            
          ],
        ),
      ),
      );
  } 
}

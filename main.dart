import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( 
          title:const Text(
            "List view Builder demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: ListView.builder(
          itemCount: 30,
          physics:const BouncingScrollPhysics(),
          itemBuilder:(BuildContext context,int index){
            return Text(
              "index : $index",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            );
          }

          ),

      ),
    );
  }
}
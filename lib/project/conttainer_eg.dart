import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class container extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
         title:Text("Container Widget")
       ),
      body:Center(child:Column(
        children:[ Container(
            color:Colors.greenAccent,
            margin: const EdgeInsets.all(20),
            height:300,
            width:300,
            padding: const EdgeInsets.all(30),
            child:Text("This is a single container widget",style:TextStyle(fontSize: 25,)),
            alignment: Alignment.bottomLeft,

        ),

          Container(
            //color:Colors.redAccent,
            //margin: const EdgeInsets.all(20),
            height:300,
            width:300,
            //padding: const EdgeInsets.all(30),
            //alignment:Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(fit:BoxFit.cover,image: NetworkImage("https://images.unsplash.com/photo-1691719603180-51fb706dcc62?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60")),
              border: Border.all(width:5,color:Colors.pinkAccent),
              borderRadius: BorderRadius.circular(30),
            ),
            alignment: Alignment.center,
            child:Text("box decoration")
          )
      ]
      ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home:container(),));
}
import 'package:flutter/material.dart';

class listvieweg extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Scrollbar(
          thumbVisibility: true,
          child:ListView.builder(itemBuilder: (context,index){
            return Card(
                  child: ListTile(title: Text("Hello World"),
                  trailing: TextButton(onPressed: () {}, child: Text("Hello")),
                  ),  
            );
          },itemCount: 100,)
      ) );
  }
}

void main() {
  runApp(MaterialApp(home:listvieweg(),));
}
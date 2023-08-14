import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class listview_sep extends StatelessWidget{
  @override
  var months = ['january','february','march','april','may','june','july','augest','september','october','november','december'];
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("List View Seprated"),
      ),
      body:ListView.separated(itemBuilder: (context,index) {
        return ListTile(
          title:Text(months[index]),
          trailing:IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.calendar)),
        );
      } , separatorBuilder: (context,index) {
        if(index % 4 == 0){
          return Card(
            child:ListTile(
              title:Text("Advertisement"),
            ),
            color: Colors.red,
          );
        }else{
          return Card();
        }
      }, itemCount: 12)
    );
  }
}

void main() {
  runApp(MaterialApp(home:listview_sep(),));
}
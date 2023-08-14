import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class drawer_assingemnt extends StatelessWidget{
  @override
  var items = ['Dashboard','Leads','Clients','Projects','Patients','subscription','Payments','Users','Library'];

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("App Drawer"),
      ),
      drawer: Drawer(
        child:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors:[
                Color(0xff1f005c),
                Color(0xff5b0060),
                Color(0xff870160),
                Color(0xffac255e),
                Color(0xffca485c),
                Color(0xffe16b5c),
                Color(0xfff39060),
                Color(0xffffb56b),
              ], // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            )
            ),
          child:Column(
          children: [
          SizedBox(height:150),
          ListTile(
              leading: FaIcon(FontAwesomeIcons.userAstronaut,size:30),
              title:Text("althaf ks"),
              subtitle: Text("althafks404@gmail.com"),
            ),

               Card(
                  color: Colors.transparent,
                  child: ListTile(
                      leading: FaIcon(FontAwesomeIcons.gauge),
                      title: Text("Dahsboard"),
                  ),
                ),

            Card(
              color: Colors.transparent,
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.subscript),
                title: Text("Subscription"),
              ),
            ),

            Card(
              color: Colors.transparent,
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.paypal),
                title: Text("Payment"),
              ),
            ),

            ListTile(
              leading:FaIcon(FontAwesomeIcons.user),
              title:Text("User")
            ),

            Card(
              color: Colors.transparent,
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.bed),
                title: Text("Patients"),
              ),
            ),

            Card(
              color: Colors.transparent,
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.book),
                title: Text("Library"),
              ),
            ),

            Card(
              color: Colors.transparent,
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.diagramProject),
                title: Text("Project"),
              ),
            ),

            SizedBox(
              height:200,
            ),

              ElevatedButton(onPressed: () {}, child: ListTile(title:Text("Log out")))


            ],
        ),


      ),
      ));
  }
}

void main(){
  runApp(MaterialApp(home:drawer_assingemnt(),));
}
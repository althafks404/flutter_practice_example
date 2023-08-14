import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class slivers extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                pinned: true,
                //pinned:true
                title:Text("Sliver AppBar"),
                bottom: AppBar(
                  elevation: 0,
                  title:Container(
                    width:double.infinity,
                    height:40,
                    color:Colors.white,
                    child:TextField(
                      decoration: InputDecoration(
                        hintText: "search",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt_outlined  ),
                      ),
                    )
                  ),
                ),
              ),
             /* SliverList(delegate: SliverChildBuilderDelegate((context, index) => Container(
                width:50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40)),
                  child:Text("Data $index"),
                height:85,
              )))
            */
              
              SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) => Card(
                    child:Center(
                      child:IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.userNinja,size: 20,))
                    )
                  )), 
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3))
            ],
            
          ),

      )
    );
  }
}

void main() {
  runApp(MaterialApp(home:slivers(),));
}
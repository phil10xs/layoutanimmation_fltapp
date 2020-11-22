import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage()
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
       backgroundColor: Colors.transparent,
       elevation:0,
       leading: Icon(Icons.menu),
        title: Text('Home'),
        actions:<Widget>[
         Padding(
           padding: EdgeInsets.all(10.0),
           child: Container(
             width:36,
             height:30,
             decoration: BoxDecoration(
               color: Colors.grey[800],
               borderRadius: BorderRadius.circular(10),
             ),
             child: Center(child: Text("0")),
           ),
         ),
        ]
      ),


      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height:250,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(20),
                 image: DecorationImage(
                   image: AssetImage('assets/images/one.jpg'),
                   fit: BoxFit.cover,
                 ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                     gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                       colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.1),
                      ],
                    ),
                  ),
                  child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('Lifestyle Sale', style: TextStyle(
                     color: Colors.white, fontSize:35, fontWeight:FontWeight.bold
                   ),),
                   SizedBox( height: 20,),
                   Container(
                     height: 60,
                     margin: EdgeInsets.symmetric(horizontal: 40),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(30),
                     ),
                   ),
                 ],
                  ),
              ),
              )],
          ),
        ),
      ),

    );
  }
}



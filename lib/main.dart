import 'package:flutter/material.dart';
import 'controle.dart';
import 'Baby.dart';
import 'dart:async';
import 'home.dart';
import 'package:sqflite/sql.dart';

void main() => runApp(MaterialApp(theme: ThemeData(
  primaryColor: Colors.white, accentColor: Colors.white,
), debugShowCheckedModeBanner: false,home: MyApp()));

 
class MyApp extends StatefulWidget{
  MyAppState createState() => MyAppState();
}




class MyAppState extends State<MyApp>{


  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4), ()=> Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> homex())));
  
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
        child: Center(
          child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.child_friendly, size: 50, color: Colors.lightBlueAccent,),
              radius: 60,
            ),
            SizedBox(height: 280,),
            CircularProgressIndicator(),
            SizedBox(height: 40,),
            Text("Carregando...", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)
          ],
        ),
        )
      ),
    );
  }
}

class homex extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.lightBlueAccent,
        child: Column(
          children: <Widget>[
            Container(
          width: 425,
          height: 440,
          padding: EdgeInsets.only(top: 170),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.lightBlueAccent,
                radius: 60,
                child: Icon(Icons.child_friendly, size: 50, color: Colors.white,),
              ),
              SizedBox(height: 30,),
              Text("Mamamya a sua companinha\n para a sua criançinha", textAlign: TextAlign.center, style: TextStyle(color: Colors.lightBlueAccent),)
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0))
          ),
        ),
        Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30,),
              Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0
              ),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0), clipBehavior: Clip.antiAlias, type: MaterialType.canvas,
                shadowColor: Colors.lightBlueAccent.shade700,
                elevation: 5.0,
                child: MaterialButton(
                  child: Text("Controle", style: TextStyle(color: Colors.lightBlueAccent, fontSize: 17.0),),
                  minWidth: 300.0,
                  height: 42.0,
                  onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> Controle())),
                ),
              ),
            ),
            SizedBox(height: 5,),
              Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0
              ),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0), clipBehavior: Clip.antiAlias, type: MaterialType.canvas,
                shadowColor: Colors.lightBlueAccent.shade700,
                elevation: 5.0,
                child: MaterialButton(
                  child: Text("Atualizar dados", style: TextStyle(color: Colors.lightBlueAccent, fontSize: 17.0),),
                  minWidth: 300.0,
                  height: 42.0,
                  onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> Baby())),
                ),
              ),
            ),
            SizedBox(height: 40,),
            FlatButton(child: Text("Entre em contacto conosco"),)
            ],
          ),
        )
          ],
        )
      ),
    );
  }
}
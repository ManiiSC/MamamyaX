import 'package:flutter/material.dart';
import 'controle.dart';
import 'Baby.dart';
import 'not.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 70,),
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              child: Icon(Icons.child_friendly, color: Colors.blueAccent, size: 70,),
            ),
            SizedBox(height: 120,),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0
              ),
              child: Material(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Colors.lightBlueAccent.shade100,
                elevation: 5.0,
                child: MaterialButton(
                  child: Text("Controle", style: TextStyle(color: Colors.white, fontSize: 17.0),),
                  minWidth: 300.0,
                  height: 42.0,
                  onPressed: ()=>Navigator.push(context, 
                                                    MaterialPageRoute(
                                                      builder: (BuildContext context)=> Controle()
                                                    )),
                ),
              ),
            ),
            SizedBox(height: 0,),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0
              ),
              child: Material(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Colors.lightBlueAccent.shade100,
                elevation: 5.0,
                child: MaterialButton(
                  child: Text("Atualizar dados", style: TextStyle(color: Colors.white, fontSize: 17.0),),
                  minWidth: 300.0,
                  height: 42.0,
                  onPressed: ()=>Navigator.push(context, 
                                                    MaterialPageRoute(
                                                      builder: (BuildContext context)=> Baby()
                                                    )),
                ),
              ),
            ),
            
            SizedBox(height: 100,),
            FlatButton(
              child: Text("Entre em contacto conosco!",
              style: TextStyle(color: Colors.black54),
              ),
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}
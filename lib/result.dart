import 'package:flutter/material.dart';
import 'controle.dart';

class result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        child: Column(
          children: <Widget>[
            Container(color: Colors.transparent,
              height: 200.0,
              width: 200.0,
            ),
             Padding(
                        padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0),
                          height: 100.0,
                          width: 300.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey.shade100
                          ),
                          child: ListView(
                            children: <Widget>[
                             Text("MAMAMYA A SUA COMPANIA",
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 12.0
                                  ),
                                  ),
                                  SizedBox(height: 4.0,),
                                  Text("Vacinas: Apolio",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    ),
                                    
                                  ),
                                  Text("Peso: 30KG",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    ),
                                    
                                  )
                            ],
                          ),
                        ),
                      ),
                       Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Colors.blue,
                color: Colors.lightBlueAccent,
                elevation: 5.0,
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
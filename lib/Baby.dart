import 'package:flutter/material.dart';
import 'dart:io';
import 'Confirma.dart';
import 'dart:convert';
import 'controle.dart';
import 'dart:async';



class Baby extends StatefulWidget {
  @override
  _BabyState createState() => _BabyState();
}

final logo = Hero(
  tag: "hero",
  child: CircleAvatar(
    backgroundColor: Colors.lightBlueAccent,
    radius: 48.0,
    child: Icon(Icons.child_friendly, color: Colors.white,),
  ),
);


final atualiza = Padding(
  padding: EdgeInsets.symmetric(vertical: 16.0),
  child: Material(
    borderRadius: BorderRadius.circular(30.0),
    shadowColor: Colors.lightBlueAccent.shade100,
    color: Colors.lightBlueAccent,
    elevation: 5.0,
    child: MaterialButton(
      minWidth: 200.0,
      height: 42.0,
      onPressed: (){},
      child: Text("Atualizar", style: TextStyle(color: Colors.white),),
    ),
  ),
);



class _BabyState extends State<Baby> {

  TextEditingController pesoInputController = new TextEditingController();
  TextEditingController nomeInputController = new TextEditingController();
  TextEditingController dataInputController = new TextEditingController();

  File jsonFile;
  Directory dir;
  String filName = "person.json";
  bool fileExist = false;
  Map<String, String> fileContent;


  @override
  void initState(){
    super.initState();

  }

  @override
  void dispose(){
    pesoInputController.dispose();
    nomeInputController.dispose();
    dataInputController.dispose();
    super.dispose();
  }

  void escrevendo(String nome, String peso, String data){
    print("Guardando dados");
    print("Nome: "+ nome);
    print("Peso: "+ peso);
    print("Data: "+ data);
  }

  void createFile(Map<String, String> content, Directory dir, String fileName){
    print("Creating file!");
    fileExist = jsonFile.existsSync();
    File file = new File(dir.path + "/" + fileName);
    file.createSync();
    fileExist = true;
    file.writeAsStringSync(json.encode(content));
  }

  void writeFile(String key, String value){
    print("Escrevendo em ficheiro");
    Map<String, String> content = {key: value};
    if(fileExist){
      print("Ficheiro existe");
      Map<String, String> jsonFileContent = json.decode("load_Json/person.json");
      jsonFileContent.addAll(content);
      jsonFile.writeAsStringSync(json.encode(jsonFileContent));
    }else{
      print("File does not exist");
      createFile(content, dir, filName);
    }
    this.setState(() => fileContent = json.decode(jsonFile.readAsStringSync()));
  }
  
  String pegarNome(String value){
    print(value);
    String nome = value;
    return nome;
  }
  String pegarPeso(String value){
    print(value);
    String peso = value;
    return peso;
  }
  String pegarData(String value){
    print(value);
    String data = value;
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0,),
            TextField(
              onChanged: (String value){pegarNome(value);},
              controller: nomeInputController,
              keyboardType: TextInputType.text,
              autofocus: false,
              decoration: InputDecoration(
                hintText: "Nome",
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0)
                )
              ),
            ),
            SizedBox(height: 8.0,),
            TextField(
              onChanged: (String value){pegarPeso(value);},
              controller: pesoInputController,
              keyboardType: TextInputType.text,
              autofocus: false,
              decoration: InputDecoration(
                hintText: "Peso",
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0)
                )
              ),
            ),
            SizedBox(height: 8.0,),
            TextField(
              onChanged: (String value){pegarData(value);},
              controller: dataInputController,
              keyboardType: TextInputType.text,
              autofocus: false,
              decoration: InputDecoration(
                hintText: "2000/04/04",
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0)
                )
              ),
            ),
            SizedBox(height: 24.0,),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Colors.lightBlueAccent.shade100,
                color: Colors.lightBlueAccent,
                elevation: 5.0,
                child: MaterialButton(
                  minWidth: 200.0,
                  height: 42.0,
                  onPressed: ()=>Navigator.pushReplacement(context, 
                  MaterialPageRoute(
                    builder: (context){
                      return Confirma();
                    }
                  )),
                  child: Text("Atualizar", style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}


class Confirma extends StatefulWidget{
  ConfirmaState createState() => ConfirmaState();
}

class ConfirmaState extends State<Confirma> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), ()=> Navigator.pushReplacement(context,MaterialPageRoute(builder: (BuildContext context)=> Controle())));
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pink, accentColor: Colors.amberAccent
      ), debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration( color: Colors.blueAccent)
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 120,),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.child_friendly,
                          color: Colors.blueAccent,
                          size: 50.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        ),
                      Text("Atualizando...", style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text("Mamamya a sua companinha \n para sua criaçinha", textAlign: TextAlign.center,style: TextStyle(color:Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold ),)
                  ],
                ),
              ),
            ],
          )
        ],
      )
    )
    );
  }
}


import 'dart:convert';
import 'Confirma.dart';
import 'package:flutter/material.dart';
import 'result.dart';
import 'sintomas.dart';



class Controle extends StatefulWidget {
  @override
  _ControleState createState() => _ControleState();
}

class _ControleState extends State<Controle> with SingleTickerProviderStateMixin{

   TabController tabController ;

  @override
  void initState(){
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }


  

  PageController pageController = PageController();
  List data;

  var list = List.generate(1, (i)=> "Flutter $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.lightBlueAccent,
        child: TabBar(controller: tabController, tabs: <Widget>[
          Icon(Icons.archive, size: 30, color: Colors.white,),
          Icon(Icons.child_friendly, size: 30, color: Colors.white),
          Icon(Icons.local_hospital, size: 30, color: Colors.white),
          Icon(Icons.timer, size: 30, color: Colors.white)
        
        ],),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        
      
        
        automaticallyImplyLeading: true,

        centerTitle: true,
        title: Text("Mamamya", style: TextStyle(fontSize: 18, color: Colors.black),),
        
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.black,), onPressed: (){
            showSearch(context: context, delegate: DataSearch());
          },)
        ],
        ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          Container(color: Colors.white,
          
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0),
                          height: 100.0,
                          width: 360.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey.shade100
                          ),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.navigation, color: Colors.blue,),
                                iconSize: 40.0,
                                onPressed: (){},
                              ),
                              SizedBox(width: 5.0,),
                              Padding(
                              padding: EdgeInsets.only(top: 27.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("MAMAMYA A SUA COMPANIA",
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 12.0
                                  ),
                                  ),
                                  SizedBox(height: 4.0,),
                                  Text("Centro de dados \ntoda a informação do seu bebe",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 20.0,),
                            IconButton(icon: Icon(Icons.arrow_forward_ios, color: Colors.grey) ,
                              iconSize: 30.0,
                              onPressed: ()=>Navigator.push(context, 
                                                    MaterialPageRoute(
                                                      builder: (BuildContext context)=> result()
                                                    )),
                            ),
                            
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                  SizedBox(height: 25.0,),
                            Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Material(
                                    elevation: 4.0,
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: Container(
                                      
                                      height: 200.0,
                                      width: 400.0,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(height: 10.0,),
                                          Padding(
                                            padding: EdgeInsets.only(left: 15.0),
                                            child: Wrap(
                                              children: <Widget>[
                                                Center(
                                                  child: Wrap(
                                                    children: <Widget>[
                                                      Icon(Icons.supervised_user_circle, color: Colors.blueAccent, size: 40,),
                                                SizedBox(height: 20,),
                                                Text("Peso atual ", textAlign: TextAlign.right, style: TextStyle(fontWeight: FontWeight.bold),),
                                                Text(" 30KG      ", style: TextStyle(color: Colors.red),),
                                                SizedBox(height: 100,),
                                                Icon(Icons.child_care, color: Colors.blueAccent, size: 40,),
                                                SizedBox(height: 20,),
                                                Text("Nome ", textAlign: TextAlign.right, style: TextStyle(fontWeight: FontWeight.bold),),
                                                Text(" Braulinho             ", style: TextStyle(color: Colors.red),),
                                                SizedBox(height: 20,),
                                                Icon(Icons.data_usage, color: Colors.blueAccent, size: 40,),
                                                SizedBox(height: 20,),
                                                Text("Data de nascimento ", textAlign: TextAlign.right, style: TextStyle(fontWeight: FontWeight.bold),),
                                                Text(" 2014/04/04", style: TextStyle(color: Colors.red),),
                                                SizedBox(height: 20,),
                                                    ],
                                                  ),
                                                )
                                                
                                              ],
                                            ),
                                          ),
                                          

                                        ],
                                      ),
                                    ),
                                  ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Center(
          child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          width: 400,
          height: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.lightBlueAccent,
          ),
          child: Center(
          child: ListView(
            children: <Widget>[
              Wrap(
                children: <Widget>[
                  Center(
                    child: Text("Dicas", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 70,),
                  Wrap(
                    children: <Widget>[
                      Text("""
                  Algumas atitudes simples podem fazer o bebê dormir muito bem

Você tem passado noites em claro devido à falta de sono do seu filho? Para fazer com que seu bebê durma como um anjinho, selecionamos ótimas dicas da pediatra Lucila Bizari F. do Prado, presidente do departamento de sono da Sociedade de Pediatria de São Paulo. Confira:

Transmita segurança ao seu filho

É essencial que os pais sintam-se seguros ao colocar seus filho no berço para dormir. Assim, eles irão transmitir essa segurança para o bebê. Mesmo com essa medida, a criança pode se sentir insegura na hora de dormir. Afinal, o bebê estava um tempão com os pais por perto e de repente as luzes se apagam e ele está sozinho. “É claro que nesta situação a criança vai querer a mãe por perto, mas muitas vezes é só se manifestar, dizer que está aqui, às vezes do seu próprio quarto mesmo, que o pequeno se acalma”, orienta a pediatra Lucilia do Prado.

Coloque a criança acordada na cama

Outra dica para evitar que o bebê se sinta inseguro é sempre colocá-lo acordado no berço. “Imagina se você dorme na sala e acorda na sua cama sozinha! A criança precisa saber que vai dormir e acordar no mesmo lugar, isso dá segurança a ela”, diz Lucilia do Prado. É claro que para ser colocada no berço a criança precisa dar sinais de que está prestes a dormir, de nada adianta deixá-la lá completamente desperta.

Crie um bom ambiente para ele dormir

Faça com que o quarto da criança seja um ambiente gostoso para dormir. Com brinquedos que ela gosta, uma cor agradável, entre outros aspectos, o bebê irá se sentir estimulado para dormir no quartinho dele.

Perceba a hora de sono do seu filho

É importante que os pais consigam notar a hora do sono da criança. “Muitos deles não observam isso e levam os pequenos no shopping ou no supermercado meia noite. Quando o horário do sono passa o bebê fica hiperexcitado e não dorme”, observa Lucilia do Prado.

Cuidado como a mamadeira noturna

O excesso da mamadeira ou alimentação noturna pode prejudicar o sono da criança. “Além de estragar os dentes, a mamadeira noturna sobrecarrega o estômago impedindo uma boa noite de sono. A partir do momento em que a criança se alimentar bem, em torno dos dois anos de idade, e se a curva do crescimento estiver normal essa mamadeira pode ser deixada”, diz Lucilia do Prado.

A orientação é esperar de uma a duas horas após a criança ser alimentada para que ela possa ser colocada para dormir.

Respeite a individualidade da criança

Assim como os adultos, há crianças que dormem mais e outra menos. Por isso, nada de querer que seu bebê durma 12 horas somente porque isso ocorreu com o irmão mais velho ou o filho do amigo. “Os pais que precisam de poucas horas de sono podem transmitir isso para seus filhos”, conta Lucilia do Prado.
                  
                  """, style: TextStyle(color: Colors.white), textAlign: TextAlign.center,)
                    ],
                  ),
                  
                ],
              )
            ],
          ),
        ),
        ),
        ),
                              ],
                            )
              ],
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/20245375_1520520817990811_8474904310619568770_n.jpg"),
                            fit: BoxFit.cover,
                          )
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5.0,),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Boa alimentação bom crescimento",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5.0,),
                        Text("Horario Alimentar", style: TextStyle(color: Colors.black, fontSize: 23.0, fontWeight: FontWeight.bold), ),
                        SizedBox(height: 10.0,),
                        Row(children: <Widget>[
                          Text("P. Almoço 8h/ Almoço 12h/ Jantar 18 - Idade 4",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),)
                        ],),
                        SizedBox(height: 15.0,),
                        Container(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: <Widget>[
                              Text("COMIDA MINHA",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        GridView.count(
                          crossAxisCount: 2,
                          primary: false,
                          crossAxisSpacing: 10.0,
                          childAspectRatio: 0.85,
                          mainAxisSpacing: 10.0,
                          shrinkWrap: true,
                          children: <Widget>[
                            
                            Padding(
                                padding: EdgeInsets.only(right: 15.0), 
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.2),
                                      style: BorderStyle.solid,
                                      width: 1.0,
                                    )
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 125.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage("assets/33987329_254119818658741_5437832083143655424_n.jpg"),
                                                fit: BoxFit.cover,
                                              )
                                            ),
                                          ),
                                          SizedBox(height: 2,),
                                          Text("  Ceralac", style: TextStyle(fontSize: 15, color: Colors.grey),),
                                          Wrap(
                                            children: <Widget>[
                                              Text(""" Cerial rico em proteinas, vitaminas C e B""", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                          
                            
                                        ],
                                      ),
                                      Positioned(
                                        left: 110.0,
                                        top: 115.0,
                                        
                                        child: Container(
                                          height: 27.0,
                                          width: 27.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.red,
                                          ),
                                          child: Center(
                                            child: Icon(Icons.fastfood, color: Colors.white,),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              
                              Padding(
                                padding: EdgeInsets.only(right: 15.0), 
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.2),
                                      style: BorderStyle.solid,
                                      width: 1.0,
                                    )
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 125.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage("assets/33987329_254119818658741_5437832083143655424_n.jpg"),
                                                fit: BoxFit.cover,
                                              )
                                            ),
                                          ),
                                          SizedBox(height: 2,),
                                          Text("  Salada de fruta", style: TextStyle(fontSize: 15, color: Colors.grey),),
                                          Wrap(
                                            children: <Widget>[
                                              Text(""" Rica em proteinas totamente natural""", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                          
                            
                                        ],
                                      ),
                                      Positioned(
                                        left: 110.0,
                                        top: 115.0,
                                        
                                        child: Container(
                                          height: 27.0,
                                          width: 27.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.red,
                                          ),
                                          child: Center(
                                            child: Icon(Icons.fastfood, color: Colors.white,),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 15.0), 
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.2),
                                      style: BorderStyle.solid,
                                      width: 1.0,
                                    )
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 125.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage("assets/33987329_254119818658741_5437832083143655424_n.jpg"),
                                                fit: BoxFit.cover,
                                              )
                                            ),
                                          ),
                                          SizedBox(height: 2,),
                                          Text("  Salada de fruta", style: TextStyle(fontSize: 15, color: Colors.grey),),
                                          Wrap(
                                            children: <Widget>[
                                              Text(""" Rica em proteinas totamente natural""", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                          
                            
                                        ],
                                      ),
                                      Positioned(
                                        left: 110.0,
                                        top: 115.0,
                                        
                                        child: Container(
                                          height: 27.0,
                                          width: 27.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.red,
                                          ),
                                          child: Center(
                                            child: Icon(Icons.fastfood, color: Colors.white,),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 15.0), 
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.2),
                                      style: BorderStyle.solid,
                                      width: 1.0,
                                    )
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 125.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage("assets/33987329_254119818658741_5437832083143655424_n.jpg"),
                                                fit: BoxFit.cover,
                                              )
                                            ),
                                          ),
                                          SizedBox(height: 2,),
                                          Text("  Salada de fruta", style: TextStyle(fontSize: 15, color: Colors.grey),),
                                          Wrap(
                                            children: <Widget>[
                                              Text(""" Rica em proteinas totamente natural""", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                          
                            
                                        ],
                                      ),
                                      Positioned(
                                        left: 110.0,
                                        top: 115.0,
                                        
                                        child: Container(
                                          height: 27.0,
                                          width: 27.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.red,
                                          ),
                                          child: Center(
                                            child: Icon(Icons.fastfood, color: Colors.white,),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 15.0), 
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.2),
                                      style: BorderStyle.solid,
                                      width: 1.0,
                                    )
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 125.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage("assets/33987329_254119818658741_5437832083143655424_n.jpg"),
                                                fit: BoxFit.cover,
                                              )
                                            ),
                                          ),
                                          SizedBox(height: 2,),
                                          Text("  Salada de fruta", style: TextStyle(fontSize: 15, color: Colors.grey),),
                                          Wrap(
                                            children: <Widget>[
                                              Text(""" Rica em proteinas totamente natural""", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                          
                            
                                        ],
                                      ),
                                      Positioned(
                                        left: 110.0,
                                        top: 115.0,
                                        
                                        child: Container(
                                          height: 27.0,
                                          width: 27.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.red,
                                          ),
                                          child: Center(
                                            child: Icon(Icons.fastfood, color: Colors.white,),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 15.0), 
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.2),
                                      style: BorderStyle.solid,
                                      width: 1.0,
                                    )
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 125.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage("assets/33987329_254119818658741_5437832083143655424_n.jpg"),
                                                fit: BoxFit.cover,
                                              )
                                            ),
                                          ),
                                          SizedBox(height: 2,),
                                          Text("  Salada de fruta", style: TextStyle(fontSize: 15, color: Colors.grey),),
                                          Wrap(
                                            children: <Widget>[
                                              Text(""" Rica em proteinas totamente natural""", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                          
                            
                                        ],
                                      ),
                                      Positioned(
                                        left: 110.0,
                                        top: 115.0,
                                        
                                        child: Container(
                                          height: 27.0,
                                          width: 27.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.red,
                                          ),
                                          child: Center(
                                            child: Icon(Icons.fastfood, color: Colors.white,),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 15.0), 
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.2),
                                      style: BorderStyle.solid,
                                      width: 1.0,
                                    )
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 125.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage("assets/33987329_254119818658741_5437832083143655424_n.jpg"),
                                                fit: BoxFit.cover,
                                              )
                                            ),
                                          ),
                                          SizedBox(height: 2,),
                                          Text("  Salada de fruta", style: TextStyle(fontSize: 15, color: Colors.grey),),
                                          Wrap(
                                            children: <Widget>[
                                              Text(""" Rica em proteinas totamente natural""", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                          
                            
                                        ],
                                      ),
                                      Positioned(
                                        left: 110.0,
                                        top: 115.0,
                                        
                                        child: Container(
                                          height: 27.0,
                                          width: 27.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.red,
                                          ),
                                          child: Center(
                                            child: Icon(Icons.fastfood, color: Colors.white,),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 15.0), 
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.2),
                                      style: BorderStyle.solid,
                                      width: 1.0,
                                    )
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 125.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage("assets/33987329_254119818658741_5437832083143655424_n.jpg"),
                                                fit: BoxFit.cover,
                                              )
                                            ),
                                          ),
                                          SizedBox(height: 2,),
                                          Text("  Salada de fruta", style: TextStyle(fontSize: 15, color: Colors.grey),),
                                          Wrap(
                                            children: <Widget>[
                                              Text(""" Rica em proteinas totamente natural""", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                          
                            
                                        ],
                                      ),
                                      Positioned(
                                        left: 110.0,
                                        top: 115.0,
                                        
                                        child: Container(
                                          height: 27.0,
                                          width: 27.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.red,
                                          ),
                                          child: Center(
                                            child: Icon(Icons.fastfood, color: Colors.white,),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 15.0), 
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.2),
                                      style: BorderStyle.solid,
                                      width: 1.0,
                                    )
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 125.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage("assets/33987329_254119818658741_5437832083143655424_n.jpg"),
                                                fit: BoxFit.cover,
                                              )
                                            ),
                                          ),
                                          SizedBox(height: 2,),
                                          Text("  Salada de fruta", style: TextStyle(fontSize: 15, color: Colors.grey),),
                                          Wrap(
                                            children: <Widget>[
                                              Text(""" Rica em proteinas totamente natural""", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                          
                            
                                        ],
                                      ),
                                      Positioned(
                                        left: 110.0,
                                        top: 115.0,
                                        
                                        child: Container(
                                          height: 27.0,
                                          width: 27.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.red,
                                          ),
                                          child: Center(
                                            child: Icon(Icons.fastfood, color: Colors.white,),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 15.0), 
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.2),
                                      style: BorderStyle.solid,
                                      width: 1.0,
                                    )
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 125.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage("assets/64645_120228521435704_1154746072_n.jpg"),
                                                fit: BoxFit.cover,
                                              )
                                            ),
                                          ),
                                          SizedBox(height: 2,),
                                          Text("  Ceralac", style: TextStyle(fontSize: 15, color: Colors.grey),),
                                          Wrap(
                                            children: <Widget>[
                                              Text(""" Cerial rico em proteinas, vitaminas C e B""", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                          
                            
                                        ],
                                      ),
                                      Positioned(
                                        left: 110.0,
                                        top: 115.0,
                                        
                                        child: Container(
                                          height: 27.0,
                                          width: 27.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.red,
                                          ),
                                          child: Center(
                                            child: Icon(Icons.fastfood, color: Colors.white,),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                              
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Container(color: Colors.white,
            child: ListView(
              children: list.map((item){

                return Dismissible(
                  secondaryBackground: Container(color: Colors.purple,),
                  movementDuration: Duration(seconds: 3),
                  dismissThresholds: {
                    DismissDirection.endToStart: 0.5,
                    DismissDirection.startToEnd: 0.1
                  },
                  //direction: DismissDirection.endToStart,
                  background: Container(
                    color: Colors.pinkAccent,
                    child: Align(alignment: Alignment.centerRight,
                    child: IconButton(icon: Icon(Icons.save),
                      color: Colors.white,
                      onPressed: (){},
                    ),
                    ),
                  ),
                  onDismissed: (direction){
                    setState(() {
                       list.removeAt(list.indexOf(item));                   
                    });
                  },
                  child: ListTile(
                  leading: IconButton(icon: Icon(Icons.save), ),
                  title: Text("Apolio"),
                ), key: Key(item),
                );
              }).toList(),
              
            ),
          ),
          Container(
            color: Colors.red,
          )
        ],
      ),
    );
  }
  
}


class DataSearch extends SearchDelegate<String>{

  final sitomas = [
    "Quentura",
    "Febre",
    "Choro escecivo",
    "Colicas",
    "Diarreias",
    "Vomitos",
  ];

  final sintomasRecentes = [
    "Ferida",
    "Inflamação",
    "Falta de apetite",
  ];

  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: (){
        query = "";
      })
    ];
  }

  @override
  Widget buildLeading(BuildContext context){
    return IconButton(icon: AnimatedIcon(
      icon: AnimatedIcons.menu_arrow,
      progress: transitionAnimation,
    ),
    onPressed: (){close(context, null);}
    );
  }

  @override
  
  Widget buildResults(BuildContext context){
    
    String sint = query;
    String nome = "";
    if(sint == "Febre"){
      nome = query;
      sint = febre();
    }
    if(sint == "Choro escecivo"){
      nome = query;
      sint = choro_escecivo();
    }
    if(sint == "Quentura"){
      nome = query;
      sint = quentura();
    }
    if(sint == "Colicas"){
      nome = query;
      sint = colicas();
    }
    if(sint == "Diarreias"){
      nome = query;
      sint = diarreias();
    }
    if(sint == "Vomitos"){
      nome = query;
      sint = vomitos();
    }
    if(sint == "Inflamação"){
      nome = query;
      sint = inflamacao();
    }
    if(sint == "Falta de apetite"){
      nome = query;
      sint = faltaApe();
    }
    if(sint == "Ferida"){
      nome = query;
      sint = ferida();
    }
        return Center(
          child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          width: 340,
          height: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.blueAccent,
          ),
          child: Center(
          child: ListView(
            children: <Widget>[
              Wrap(
                children: <Widget>[
                  Center(
                    child: Text(nome, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 70,),
                  Text(sint, style: TextStyle(color: Colors.white), textAlign: TextAlign.center,)
                ],
              )
            ],
          ),
        ),
        ),
        );
        
  }

  @override
  Widget buildSuggestions(BuildContext context){
    final sugestao = query.isEmpty
    ?sintomasRecentes
    :sitomas.where((p)=> p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: (){
          showResults(context);
        },
      leading: Icon(Icons.local_hospital),
      title: RichText(
        text: TextSpan(
          text: sugestao[index].substring(0, query.length),
          style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold
            ),
          children: [
            TextSpan(
              text: sugestao[index].substring(query.length),
              style: TextStyle(color: Colors.grey)
          )]
        ),
      ),
    ),
     itemCount: sugestao.length,
    );
  }
}
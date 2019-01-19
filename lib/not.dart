import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class notifica extends StatefulWidget{
  notState createState() => notState();
}


class notState extends State<notifica>{

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

@override
void initState(){
  super.initState();
  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  var android = AndroidInitializationSettings("@nimap/ic_launcher");
  var ios = IOSInitializationSettings();
  var initSettings = InitializationSettings(android, ios);
  flutterLocalNotificationsPlugin.initialize(initSettings, onSelectNotification: onSelectNotification);
}

Future onSelectNotification(String payload){
  debugPrint("Payload: $payload");
  showDialog(context: context,builder: (_) => new AlertDialog(
    title: Text("Notification"),
    content: Text("Payload"),
  ));
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
      color: Colors.blueAccent,
      child: Center(
        child: FloatingActionButton(child: Icon(Icons.confirmation_number), backgroundColor: Colors.greenAccent, onPressed: showNotification,),
      ),
      )
    );
  }
  showNotification()async{
      var android = new AndroidNotificationDetails("channelId", "channelName", "channelDescription");
      var ios = new IOSNotificationDetails();
      var platform = new NotificationDetails(android, ios);
      await flutterLocalNotificationsPlugin.show(0, "New video", "Flutter ", platform);
    }
}
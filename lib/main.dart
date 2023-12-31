import "package:flutter/material.dart";
import 'package:app1/home.dart';
import 'package:camera/camera.dart';


List<CameraDescription>? cameras;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(new myApp());
}

class myApp extends StatelessWidget{
  const myApp({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }





}
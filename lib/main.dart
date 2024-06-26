
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:myapp/view/login.dart';


Future<void> main() async {
  var db = await Db.create("mongodb+srv://candemas97:supersecret@cluster0.czf3nfw.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0");
  await db.open();
  print('Connected to the database');
  await dotenv.load(fileName: ".env");  
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Captura Modelo Comercial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const LoginScreen(),
    );
  }
}


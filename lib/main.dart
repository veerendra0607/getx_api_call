import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apicall/Screens/user_screens.dart';

void main() {
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetXApi App",
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      debugShowCheckedModeBanner: false,
      home:   UserListView(),
    );
  }
}
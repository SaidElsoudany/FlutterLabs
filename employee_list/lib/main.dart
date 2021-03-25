import 'package:employee_list/provider-models/employee_provider_model.dart';
import 'package:employee_list/screens/add_employee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home-page.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  EmployeePModel model = new EmployeePModel();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      ChangeNotifierProvider.value(
        value:model,
        child:MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  HomePage(),
      ),
    );
  }
}


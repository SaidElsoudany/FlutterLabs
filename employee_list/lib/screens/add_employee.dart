import 'package:employee_list/model/employee_model.dart';
import 'package:employee_list/network/employee_model_repo.dart';
import 'package:employee_list/provider-models/employee_provider_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddEmployee extends StatefulWidget {
  AddEmployee() : super();
  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  var employeeNameController = TextEditingController();
  var employeeAgeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Employee"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "Employee Name",
                      hintStyle: TextStyle(color: Colors.black38)),
                  controller: employeeNameController,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Employee Age",
                      hintStyle: TextStyle(color: Colors.black38)),
                  controller: employeeAgeController,
                ),
                Consumer<EmployeePModel>(builder: (context, model, child) {
                  return FlatButton(
                    onPressed: () {
                      var addedEmployee = EmployeeModel(
                          employeeNameController.text,
                          employeeAgeController.text);
                      EmployeeModelRepo().createEmployeeModel(addedEmployee);
                      model.addEmployee(addedEmployee);
                      Navigator.pop(context);
                    },
                    child: Text("Add Employee"),
                    color: Colors.blue,
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

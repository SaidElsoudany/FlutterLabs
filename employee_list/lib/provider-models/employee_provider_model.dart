
import 'package:employee_list/model/employee_model.dart';
import 'package:employee_list/network/employee_model_repo.dart';
import 'package:flutter/material.dart';


class EmployeePModel with ChangeNotifier{
  List<EmployeeModel> employeeList;

  EmployeePModel()
  {
    employeeList = List();
    EmployeeModelRepo().getEmployee()
        .then((addedEmployeeList) {
      employeeList.addAll(addedEmployeeList);
      notifyListeners();
    });
  }
  addEmployee(EmployeeModel employee)
  {
    employeeList.add(employee);
    notifyListeners();
  }
  addEmployeeList(List<EmployeeModel> addedEmployeeList)
  {
    employeeList.addAll(addedEmployeeList);
    notifyListeners();
  }

}
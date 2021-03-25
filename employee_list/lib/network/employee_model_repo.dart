import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:employee_list/model/employee_model.dart';

class EmployeeModelRepo {
  EmployeeModelRepo();

  final Dio dio = Dio();

  // final JsonDecoder _decoder = new JsonDecoder();

  Future<List<EmployeeModel>> getEmployee()  async{
    print("here");
    return  dio
        .get(
      'http://dummy.restapiexample.com/api/v1/employees',
    )
        .then((response) {
      print(response.data['data'].toString());
      List<EmployeeModel> list = (response.data['data'] as List)
          .map((employee) => EmployeeModel.fromJson(employee))
          .toList();
      print(list.toString());
      return list;
    });
  }

  Future<void> createEmployeeModel(EmployeeModel employeeModel) async{
    dio.options.headers.putIfAbsent("Accept", () {
      return "application/json";
    });
    return await dio
        .post("http://dummy.restapiexample.com/api/v1/create", data: jsonEncode(employeeModel))
        .then((d) {
      print(d.data);
    });
  }
}

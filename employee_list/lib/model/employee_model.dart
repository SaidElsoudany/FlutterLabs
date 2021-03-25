
class EmployeeModel{
  String employeeName;
  String employeeAge;
  EmployeeModel(this.employeeName,this.employeeAge);

  EmployeeModel.fromJson(Map<String,dynamic> map){
    this.employeeName = map['employee_name'] ?? "N/A";
    this.employeeAge = map['employee_age'] ?? "N/A";
  }
  Map<String, dynamic> toJson() => {
    "name" : this.employeeName,
    "age" : this.employeeAge,
  };

  @override
  String toString() {
    // TODO: implement toString
    return employeeName + " " + employeeAge;
  }
}
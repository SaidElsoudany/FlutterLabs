import 'package:employee_list/model/employee_model.dart';
import 'package:employee_list/network/employee_model_repo.dart';
import 'package:employee_list/provider-models/employee_provider_model.dart';
import 'package:employee_list/screens/add_employee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage() : super();
  // final provider = Provider.of<EmployeePModel>(context);
  @override
  HomePageState createState() => HomePageState();
}
class HomePageState extends State<HomePage>
{

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: Text("Employees List"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child:  Consumer<EmployeePModel>(builder: (context,model,child){
              return ListView.builder(
                  itemCount: model.employeeList.length,
                  itemBuilder: (context, position) {
                    return Card(
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${(model.employeeList[position]).employeeName}",
                                style: TextStyle(color: Colors.black, fontSize: 25),
                              ),
                              Text(
                                "${(model.employeeList[position]).employeeAge}",
                                style:
                                TextStyle(color: Colors.black38, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            })
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => AddEmployee(),));
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      );
  }

}

// FutureBuilder(
// future: EmployeeModelRepo().getEmployee(),
// builder: (context, employeeResponse) {
// if (employeeResponse.connectionState == ConnectionState.waiting &&
// !employeeResponse.hasData) {
// return Center(child: CircularProgressIndicator());
// } else if (employeeResponse.hasError) {
// return Center(child: Text("Error"));
// } else {
// return ListView.builder(
// itemCount: employeeResponse.data.length,
// itemBuilder: (context, position) {
// return Card(
// child: Container(
// width: double.infinity,
// height: 100,
// child: Padding(
// padding: const EdgeInsets.all(10.0),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// "${(employeeResponse.data[position]).employeeName}",
// style: TextStyle(color: Colors.black, fontSize: 25),
// ),
// Text(
// "${(employeeResponse.data[position]).employeeAge}",
// style: TextStyle(color: Colors.black38, fontSize: 18),
// ),
// ],
// ),
// ),
// ),
// );
// },
// );
//
// }
// });

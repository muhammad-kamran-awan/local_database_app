import 'package:flutter/material.dart';
import 'package:students_ms/screens/add_student_screen.dart';
import 'package:students_ms/screens/students_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FUUAST Student Record"),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 100,
        ),
        Container(
          child: Image.asset('images/fuuast.jpg'),
        ),
        SizedBox(
          height: 50,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) {
              return const AddStudentScreen();
            }));
          },
          child: Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
                child: Text(
              "Add student",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) {
              return const StudentsListScreen();
            }));
          },
          child: Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
                child: Text(
              "View Previous Records",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),
          ),
        ),
      ]),
    );
  }
}

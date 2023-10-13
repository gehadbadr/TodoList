import 'package:flutter/material.dart';
import 'package:todolist/views/add_task_view.dart';
import 'package:todolist/views/header_view.dart';
import 'package:todolist/views/task_info_view.dart';
import 'package:todolist/views/task_list_view.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(color: Colors.purple.shade100,child: HeaderView(),)
              ),
              Expanded(
                  flex: 2,
                  child: Container(color: Colors.purple.shade100,child: const TaskInfoView())
              ),
              Expanded(
                  flex: 7,
                  child: Container(color: Colors.purple.shade100,child:const TaskListView())
              )
      ],
    ),
        ),
        floatingActionButton: AddTaskView()
    );
  }
}

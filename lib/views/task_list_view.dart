
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/view_models/app_view_model.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder:(context, viewModel, child ){
      return Container(
       // margin: EdgeInsets.only(top:10),
        margin:  EdgeInsets.all(7),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: viewModel.clrv2,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))
        ),
        child: ListView.separated(
            padding: EdgeInsets.all(10),
            itemBuilder: (context , index){
              return Dismissible(
                key:UniqueKey(),
                onDismissed: (direction){viewModel.deleteTask(index);},
                background: Container(
                  margin: EdgeInsets.symmetric(vertical:5),
                  decoration: BoxDecoration(
                    color:Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Icon(Icons.delete,color: Colors.red.shade700,),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: viewModel.clrv1,
                      borderRadius: BorderRadius.circular(10)
                  ),

                  child: ListTile(
            //    controlAffinity:ListTileControlAffinity.leading,.
           //     title:  Text("${viewModel.getTaskTitle(index)}"),
                    leading:Checkbox(
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ) ,
                      value: viewModel.getTaskValue(index),
                      onChanged: (value) { viewModel.setTaskValue(index,value!); },
                      side: BorderSide(width: 2,color: viewModel.clrv4),
                      checkColor: viewModel.clrv2,
                      activeColor: viewModel.clrv4,
                    ),
                    title:  Text(viewModel.getTaskTitle(index),
                    style: TextStyle(color: viewModel.clrv4),),

                  ),
                ),
              );/*Container(child: Text("${viewModel.getTaskValue(index)}"), );*/
            },
            separatorBuilder: (context , index ){
              return SizedBox(height: 15,);
            },
            itemCount: viewModel.numTasks
        ),
      );/* Container(child: Text("${viewModel.numTasks}"), )*/
    });
  }
}

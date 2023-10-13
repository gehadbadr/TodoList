
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/view_models/app_view_model.dart';

class TaskInfoView extends StatelessWidget {
  const TaskInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder:  (context,viewModel,child){
      return Container(
        margin:  EdgeInsets.all(7),
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
      //      color: viewModel.clrv2,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: viewModel.clrv2,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                          margin: EdgeInsets.only(top:10),
                          child: Text("${viewModel.numTasks}",
                          style: TextStyle(
                              fontSize: 28,
                              color: viewModel.clrv4,
                              fontWeight: FontWeight.bold
                          )
                      )
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: Text("Total Tasks",
                            style: TextStyle(
                                color: viewModel.clrv3,
                                fontWeight: FontWeight.w600
                            ),
                          ),

                        )
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: viewModel.clrv2,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                          margin: EdgeInsets.only(top:10),
                          child: Text("${viewModel.NumRemainingTasks}",
                          style: TextStyle(
                              fontSize: 28,
                              color: viewModel.clrv4,
                              fontWeight: FontWeight.bold
                          )
                      )
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: Text("Remaining",
                            style: TextStyle(
                                color: viewModel.clrv3,
                                fontWeight: FontWeight.w600
                            ),
                          ),

                        )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

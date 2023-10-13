
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_model.dart';
import 'package:todolist/view_models/app_view_model.dart';

class DeleteBottomSheetView extends StatelessWidget {
  const DeleteBottomSheetView({super.key});


  @override
  Widget build(BuildContext context) {
    final TextEditingController entryController = TextEditingController();
    return Consumer<AppViewModel>(builder: (context,viewModel , child){
      return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  viewModel.deleteAllTasks();
                  Navigator.pop(context);
                  },
                style: ElevatedButton.styleFrom(
                    backgroundColor:viewModel.clrv4,
                    foregroundColor: viewModel.clrv1,
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16
                    ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text("Delete All")),
            SizedBox(width: 15,),
            ElevatedButton(
                onPressed: (){
                  viewModel.deleteCompletedTasks();
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:viewModel.clrv4,
                  foregroundColor: viewModel.clrv1,
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text("Delete Completed")),

          ],
        ),
      );
    });
  }
}

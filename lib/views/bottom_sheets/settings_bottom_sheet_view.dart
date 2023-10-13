
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_model.dart';
import 'package:todolist/models/user_model.dart';
import 'package:todolist/view_models/app_view_model.dart';

class SettingsBottomSheetView extends StatelessWidget {
  const SettingsBottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController entryController = TextEditingController();
    return Consumer<AppViewModel>(builder: (context,viewModel , child){
      return Padding(
          padding: EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: 80,
          child: Center(
            child: SizedBox(
              height: 40,
              width: 250,
              child: TextField(
                  onSubmitted: (value){
                    if(entryController.text.isNotEmpty){
                      viewModel.updateUsername(entryController.text);
                      entryController.clear();
                      Navigator.pop(context);

                    }
                  },
                  decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 5),
                  filled: true,
                  fillColor: viewModel.clrv1,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    )
                  ),
                ),
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: viewModel.clrv3,
                autofocus: true,
                autocorrect: true,
                controller: entryController,
                style: TextStyle(
                  color: viewModel.clrv4,
                  fontWeight: FontWeight.w500,

                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/user_model.dart';
import 'package:todolist/view_models/app_view_model.dart';
import 'package:todolist/views/bottom_sheets/delete_bottom_sheet_view.dart';
import 'package:todolist/views/bottom_sheets/settings_bottom_sheet_view.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context ,viewModel ,child){
      return Row(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment:Alignment.topLeft,
                      child: FittedBox(
                        fit:BoxFit.fitHeight,
                        child: Text("Welcome back",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: viewModel.clrv4
                          ),),
                      ),
                    ),
                    Align(
                      alignment:Alignment.bottomLeft,
                      child: FittedBox(
                          fit:BoxFit.fitHeight,
                          child:
                          Text(viewModel.user.username,
                            style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                                color: viewModel.clrv4
                            ),)
                      ),
                    ),

                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: InkWell(
                  onTap: (){viewModel.bottomSheetBuilder(DeleteBottomSheetView() ,context);},
                  child: Icon(Icons.delete ,color: viewModel.clrv4,size: 40,))),
          Expanded(
              flex: 1,
              child: InkWell(
                  onTap: (){viewModel.bottomSheetBuilder(SettingsBottomSheetView() ,context);},
                  child: Icon(Icons.settings ,color: viewModel.clrv4,size: 40,))),
        ],
      );
    });
  }
}

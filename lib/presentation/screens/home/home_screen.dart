import 'package:flutter/material.dart';
import 'package:tech_task/app/injections/locator.dart';
import 'package:tech_task/presentation/screens/home/viewmodel/home_event.dart';
import 'package:tech_task/presentation/screens/home/viewmodel/home_viewmodel.dart';
import 'package:tech_task/presentation/screens/home/widgets/medications_list.dart';
import 'package:tech_task/presentation/utils/snack_bar_helper.dart';
import 'package:tech_task/presentation/utils/ui_state_builder.dart';
import 'package:tech_task/presentation/utils/viewmodel_builder.dart';
import 'package:tech_task/presentation/utils/viewmodel_event_handler.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>(
      viewModelBuilder: locator,
      builder: (context, viewModel) => Scaffold(
        body: ViewModelEventHandler<HomeEvent>(
          viewModel: viewModel,
          onEvent: (event) {
            event.when(
              somethingWentWrong: () =>
                  SnackBarHelper(context).showGenericErrorSnackBar(),
            );
          },
          child: UIStateBuilder<HomeViewModel>(
            successState: SafeArea(
              child: MedicationsList(
                submitAction: viewModel.submitAction,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

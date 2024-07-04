import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:provider/provider.dart';
import 'package:tech_task/presentation/utils/extensions.dart';

import '../viewmodel/home_action.dart';
import '../viewmodel/home_state.dart';
import '../viewmodel/home_viewmodel.dart';

class MedicationsList extends StatelessWidget {
  const MedicationsList({
    required this.submitAction,
    super.key,
  });

  final Function(HomeAction) submitAction;

  @override
  Widget build(BuildContext context) {
    return Selector<HomeViewModel, HomeState>(
      selector: (context, viewModel) => viewModel.state,
      builder: (_, state, __) {
        return LiquidPullToRefresh(
          showChildOpacityTransition: false,
          springAnimationDurationInMilliseconds: 300,
          color: Colors.transparent,
          onRefresh: () => submitAction(
            const HomeAction.refresh(),
          ),
          child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 100),
            itemCount: state.medications.length,
            itemBuilder: (context, index) {
              final medication = state.medications[index];

              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Card(
                  color: context.colors.secondary,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          medication.medicineName,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: context.colors.surface,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Price: \$${medication.price.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 16,
                            color: context.colors.primaryAccent,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Instruction: ${medication.instruction}',
                          style: TextStyle(
                            fontSize: 16,
                            color: context.colors.primaryAccent,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

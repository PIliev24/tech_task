import 'package:flutter/material.dart';

import 'extensions.dart';

final class SnackBarHelper {
  SnackBarHelper(this.context);

  final BuildContext context;

  void showSuccessSnackBar(
    String message,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
        ),
        backgroundColor: context.colors.secondary,
      ),
    );
  }

  void showErrorSnackBar(
    String message,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
        ),
        backgroundColor: context.colors.error,
      ),
    );
  }

  void showGenericErrorSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Something went wrong',
          style: context.textTheme.titleSmall?.copyWith(
            color: context.colors.surface,
          ),
        ),
        backgroundColor: context.colors.error,
      ),
    );
  }

  void showInfoSnackBar(
    String message,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
        ),
        backgroundColor: context.colors.primary,
      ),
    );
  }
}

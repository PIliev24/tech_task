import 'package:go_router/go_router.dart';

import '../utils/base_viewmodel.dart';

final class MainViewModel extends BaseViewModel {
  MainViewModel({
    required GoRouter router,
  }) : _router = router;

  final GoRouter _router;

  @override
  Future<void> init() async {
    //Any initial listening happens from here
  }
}

import 'package:go_router/go_router.dart';
import 'package:tech_task/presentation/screens/home/home_screen.dart';

class Routes {
  static const String home = '/home';
}

final routes = [
  GoRoute(
    path: Routes.home,
    name: Routes.home,
    builder: (_, __) => const HomeScreen(),
  ),
];

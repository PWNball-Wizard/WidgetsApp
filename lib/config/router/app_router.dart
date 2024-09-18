import 'package:go_router/go_router.dart';
import 'package:widgets_app_new/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app_new/presentation/screens/cards/card_screen.dart';
import 'package:widgets_app_new/presentation/screens/home/home_screen.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return const HomeScreen();
    },
  ),
  GoRoute(
    path: '/botones/:parametro',
    builder: (context, state) {
      final String parametro = state.params['parametro'].toString();
      return ButtonsScreen(parametro: parametro);
    },
  ),
  GoRoute(
    path: '/tarjetas',
    builder: (context, state) => const CardScreen(),
  ),
]);

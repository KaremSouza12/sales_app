import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:sales_app/src/pages/home/home_page.dart';
import 'package:sales_app/src/pages/login/routes.dart';
import 'package:sales_app/src/providers/providers.dart';
import 'package:sales_app/src/service/Auth_service.dart';

const initialRoute = "/";
final loginInfo = getIt<AuthService>();

final appRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: initialRoute,
  refreshListenable: loginInfo,
  redirect: (context, state) {
    // if the user is not logged in, they need to login
    final loggedIn = loginInfo.isAuthenticated;
    final loggingIn = state.matchedLocation == '/login';
    final register = state.matchedLocation == '/login/register';

    if (register) return '/login/register';
    if (!loggedIn) return loggingIn ? null : '/login';

    // if the user is logged in but still on the login page, send them to
    // the home page
    if (loggingIn) return '/';

    // no need to redirect at all
    return null;
  },
  routes: [
    GoRoute(
      path: initialRoute,
      builder: (context, state) => HomePage(
        title: 'title',
        controller: GetIt.instance.get(),
      ),
    ),
    ...loginRoutes
  ],
);

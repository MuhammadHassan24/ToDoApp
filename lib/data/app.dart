import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:todoapp/screens/authantication/login/loginview.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: LoginView, initial: true),
  ],
  dependencies: [Singleton(classType: NavigationService)],
)
class App {}

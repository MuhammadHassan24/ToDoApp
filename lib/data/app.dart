import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:todoapp/screens/authantication/login/loginview.dart';
import 'package:todoapp/screens/authantication/signin/signinview.dart';
import 'package:todoapp/screens/home/homeview.dart';


@StackedApp(routes: [
  MaterialRoute(page: LoginView, initial: true),
  MaterialRoute(page: SignInView),
  MaterialRoute(page: HomeView),
  
], dependencies: [
  Singleton(classType: NavigationService)
])
class App {}

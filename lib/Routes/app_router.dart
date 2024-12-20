
import 'package:event_count_downar/views/onboarding_page.dart';
import 'package:event_count_downar/Routes/routes.dart';
import 'package:event_count_downar/views/about_app.dart';
import 'package:event_count_downar/views/add_note.dart';
import 'package:event_count_downar/views/home_view.dart';
import 'package:event_count_downar/views/notes_view.dart';
import 'package:event_count_downar/views/splash_page.dart';
import 'package:event_count_downar/views/theme_my_app.dart';
import 'package:flutter/material.dart';

import '../views/feedback.dart';

Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Routes.splash:
      return MaterialPageRoute(
          builder: (_) => const SplashPage(), settings: routeSettings);
    case Routes.onboarding:
      return MaterialPageRoute(
          builder: (_) => const OnboardingPage(), settings: routeSettings);
    case Routes.homeView:
      return MaterialPageRoute(
          builder: (_) =>  const HomeView(), settings: routeSettings);
    case Routes.noteViewWithCard1:
      return MaterialPageRoute(
          builder: (_) =>  NotesView(color: "card1",), settings: routeSettings);
    case Routes.noteViewWithCard2:
      return MaterialPageRoute(
          builder: (_) =>  NotesView(color: "card2",), settings: routeSettings);      
    case Routes.noteViewWithCard3:
      return MaterialPageRoute(
          builder: (_) =>  NotesView(color: "card3",), settings: routeSettings);
    case Routes.myTheme:
      return MaterialPageRoute(
          builder: (_) =>  const ThemeMyApp(), settings: routeSettings);      
  
    case Routes.addEvent:
      return MaterialPageRoute(
          builder: (_) => const AddNote(), settings: routeSettings);
    case Routes.aboutApp:
      return MaterialPageRoute(
          builder: (_) =>  const AboutPage(), settings: routeSettings);      
    case Routes.feedback:
      return MaterialPageRoute(
          builder: (_) =>  const Feedbackscreen(), settings: routeSettings);      
    default:
      return null;
  }
}

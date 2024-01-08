import 'package:flutter_ui/pages/page/about_us.dart';
import 'package:flutter_ui/pages/page/contact_us.dart';
import 'package:flutter_ui/pages/page/home.dart';
import 'package:flutter_ui/pages/page/profile.dart';
import 'package:go_router/go_router.dart';

class MyRoute {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: "home",
        builder: (context, state) {
          return const Home();
        },
      ),
      GoRoute(
        path: '/contactus',
        name: "contact_us",
        builder: (context, state) {
          return const ContactUs();
        },
      ),
      GoRoute(
        path: '/aboutus',
        name: "about_us",
        builder: (context, state) {
          return const AboutUs();
        },
      ),
      GoRoute(
        path: '/profile',
        name: "profile",
        builder: (context, state) {
          return const Profile();
        },
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:hello/src/detail.dart';
import 'package:hello/src/mainpage.dart';
import 'package:hello/src/selectpage.dart';
import 'package:go_router/go_router.dart';

class BusTicketBookingApp extends StatelessWidget {
  BusTicketBookingApp({Key? key}) : super(key: key);
  final appRoute = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const BusBookingMainPage(),
        routes: [
          ShellRoute(
            routes: [
              GoRoute(
                path: "detail",
                builder: (context, state) => const BusBookingDetailPage(),
              ),
              GoRoute(
                path: "selectpage",
                builder: (context, state) => const BusBookingSelectPage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRoute,
    );
  }
}

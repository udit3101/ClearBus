import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final busTicketAppMenuIndex = StateProvider<int>((ref) => 0);

class BusBookingMainPage extends StatefulWidget {
  const BusBookingMainPage({Key? key}) : super(key: key);

  @override
  State<BusBookingMainPage> createState() => _BusBookingMainPageState();
}

class _BusBookingMainPageState extends State<BusBookingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final index = ref.watch(busTicketAppMenuIndex);
      return Scaffold(
        body: SafeArea(
          top: true,
          child: IndexedStack(
            index: index,
            children: [
              const BusBookingHomeScreen(),
              Center(
                child: Text("$index"),
              ),
              Center(
                child: Text("$index"),
              )
            ],
          ),
        ),
      );
    });
  }
}

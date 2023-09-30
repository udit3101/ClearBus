import 'package:flutter/material.dart';
import 'package:hello/bus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    ProviderScope(
      child: BusTicketBookingApp(),
    ),
  );
}

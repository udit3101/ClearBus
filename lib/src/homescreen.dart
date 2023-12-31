import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class BusBookingHomeScreen extends StatefulWidget {
  const BusBookingHomeScreen({Key? key}) : super(key: key);

  @override
  State<BusBookingHomeScreen> createState() => _BusBookingHomeScreenState();
}

class _BusBookingHomeScreenState extends State<BusBookingHomeScreen> {
  TextEditingController datecontroller = TextEditingController();
  bool tripType = false;
  int _counter = 0;
  final TextEditingController _fromTec = TextEditingController();
  final TextEditingController _toTec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 64, 16, 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Book tickets for your",
              style: GoogleFonts.montserrat(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "next trip",
              style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 32),
                height: 58,
                width: MediaQuery.of(context).size.width - 160,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(32),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            tripType = true;
                          });
                        },
                        child: tripType
                            ? Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: const Center(
                                  child: Text(
                                    "One Way",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            : const Center(
                                child: Text(
                                  "One Way",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            tripType = false;
                          });
                        },
                        child: !tripType
                            ? Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Round Trip",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            : const Center(
                                child: Text(
                                  "Round Trip",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 140,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Row(
                            children: [
                              const Text(
                                "From",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              Expanded(
                                child: TextField(
                                  controller: _fromTec,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 0),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Row(
                            children: [
                              const Text(
                                "To",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              Expanded(
                                child: TextField(
                                  controller: _toTec,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 16,
                    bottom: 16,
                    top: 16,
                    child: GestureDetector(
                      onTap: () {
                        final tmpText = _fromTec.text;
                        _fromTec.text = _toTec.text;
                        _toTec.text = tmpText;
                        setState(() {});
                      },
                      child: const Center(
                        child: CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          child: Icon(
                            Icons.sync,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TextField(
                controller: datecontroller,
                decoration: InputDecoration(
                  fillColor: Colors.blueAccent,
                  labelText: "Date",
                  prefixIcon: Icon(Icons.calendar_today),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                ),
                readOnly: true,
                onTap: () {
                  selectdate();
                }),
            const SizedBox(
              height: 48,
            ),
            const Text(
              "Do you have promocode?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            GestureDetector(
              onTap: () {
                context.push("/detail");
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(48),
                ),
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Search for Trips",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> selectdate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (picked != null) {
      setState(() {
        datecontroller.text = picked.toString().split(" ")[0];
      });
    }
  }
}

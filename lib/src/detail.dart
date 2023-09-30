import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BusBookingDetailPage extends StatefulWidget {
  const BusBookingDetailPage({Key? key}) : super(key: key);

  @override
  State<BusBookingDetailPage> createState() => _BusBookingDetailPageState();
}

class _BusBookingDetailPageState extends State<BusBookingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xffffffff),
          foregroundColor: Color(0xffae7874),
          title: Row(
            children: [
              Column(
                children: [
                  Text(
                    "SBSTC BUSES",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "1 Bus Options",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                width: 80,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    color: Color(0xff008dff),
                    child: Text(
                      "HIDE BUSES",
                      style: TextStyle(fontSize: 12),
                    ),
                  ))
            ],
          )),
      body: Column(
        children: [
          Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xfff0e474),
                  borderRadius: BorderRadius.circular(35)),
              child: Row(
                children: [
                  Icon(Icons.power),
                  Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Advance Booking",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "for",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            "Durgo Pujo",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "are",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      Text("Available. Hurry, book your seats now ")
                    ],
                  ),
                ],
              )),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
              onTap: () {
                context.push("/selectpage");
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffd99413),
                ),
                child: Column(children: [
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(2)),
                      Text(
                        "16:00 - 00:00",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(width: 150),
                      Text(
                        "₹  111",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(2)),
                      Text(
                        "8h 00m",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        ".",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "25 Seats left",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(2)),
                      Text(
                        "SBSTC-MIDNAPUR-BARASAT...",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(2)),
                      Text(
                        "NON AC SEATER(2+3)",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(2)),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff7691bf),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 1,
                            ),
                            Icon(Icons.free_cancellation),
                            Text("Cancellation Policy"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff7691bf),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 1,
                              ),
                              Icon(Icons.car_repair_outlined),
                              Text("Safe driving")
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  )
                ]),
              ))
        ],
      ),
    );
  }
}

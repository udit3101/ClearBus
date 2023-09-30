import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class BusBookingSelectPage extends StatefulWidget {
  const BusBookingSelectPage({Key? key}) : super(key: key);

  @override
  State<BusBookingSelectPage> createState() => _BusBookingSelectPageState();
}

_launchURLApp() async {
  var url = Uri.parse("https://rzp.io/i/royaEtYjdp");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _BusBookingSelectPageState extends State<BusBookingSelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "SBSTC-MIDNAPUR-BAR...",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Container(
              height: 20,
              width: 30,
              color: Colors.yellow,
              child: Row(
                children: [
                  Text(
                    "2.8",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            )
          ],
        ),
        leading: SizedBox(
          height: 50,
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
            color: Colors.red,
          ),
        ),
        backgroundColor: Colors.grey[500],
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: false,
      ),
      body: Column(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              color: Colors.grey[500],
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(25, 0, 0, 0)),
                  Text("16:00 -> 00:00 "),
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 50, 0)),
                  Text("Tue,19 Sep "),
                ],
              ),
            ),
            Container(
                color: Colors.grey[500],
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(25, 0, 0, 0)),
                    Text("Midnapur(West-Bengal) - Kolkata "),
                  ],
                )),
          ]),
          SizedBox(
            height: 55,
          ),
          CarouselSlider(
            items: [
              Container(
                height: 700,
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Seats",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        Container(
                          height: 1,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Available")
                        ]),
                        SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          Container(
                            height: 70,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Sleeper")
                        ]),
                        SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          Container(
                            height: 32,
                            width: 32,
                            color: Color(0xffbcb6b6),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Booked")
                        ]),
                        SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          Container(
                            height: 32,
                            width: 32,
                            color: Color(0xff00ff4c),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Selected by you")
                        ]),
                        SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.pink, width: 2)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text(" Female Passengers"),
                              Text("Only")
                            ],
                          )
                        ]),
                        SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          Container(
                            height: 32,
                            width: 32,
                            color: Colors.pink,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text("Blocked By Female"),
                              Text("Passengers Only")
                            ],
                          )
                        ]),
                        SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue, width: 2)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [Text("Male Passengers "), Text("Only")],
                          )
                        ]),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                height: 500,
                width: 245,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 200,
                            ),
                            Icon(Icons.set_meal)
                          ],
                        ),
                        Container(
                          height: 1,
                          width: 500,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 38,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 38,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 38,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Container(height: 42, width: 32, color: Colors.white),
                          SizedBox(
                            width: 3,
                          ),
                          Container(height: 42, width: 32, color: Colors.white),
                          SizedBox(
                            width: 38,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 38,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 42,
                            width: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
              ),

              //1st Image of Slider
            ],
            //Slider Container properties
            options: CarouselOptions(
              height: 400.0,
              enlargeCenterPage: false,
              autoPlay: false,
              aspectRatio: 1 / 1,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: false,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.9,
            ),
          ),
          ElevatedButton(onPressed: _launchURLApp, child: Text("pay"))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'class list.dart';
import 'homepage.dart';

class LastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  "images/home.png",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/store.png"),
              ),
              Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color(0xff5117AC),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        "images/stack.png",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/heart.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/user.png"),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Colors.grey[400], blurRadius: 10),
                ]),
                child: Center(
                  child: Text(
                    "Carrito",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Popins",
                      color: Color(0xff153E73),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff5117AC),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.home_filled,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mi casa",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Popins",
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Direción deejemplo",
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Popins",
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[100]),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.home_filled,
                              color: Color(0xff5117AC),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mi casa",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Popins",
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Direción deejemplo",
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Popins",
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff5117AC),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 300,
                width: double.infinity,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: list4.length,
                    itemBuilder: (BuildContext context, int index) => Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Stack(
                            children: [
                              Container(
                                height: 270,
                                width: 250,
                                color: Colors.transparent,
                                child: Column(
                                  children: [
                                    Spacer(),
                                    Container(
                                      height: 250,
                                      width: 220,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey[200],
                                              blurRadius: 15,
                                            ),
                                          ]),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Center(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Container(
                                                  height: 90,
                                                  width: 90,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                  ),
                                                  child: Image.asset(
                                                    list4[index].image,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              list4[index].title,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Popins",
                                                color: Color(0xff5117AC),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Lorem ipsum dolor sit amet,\nconsectetur adipisicing elit",
                                              style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Popins",
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 25,
                                                      width: 25,
                                                      decoration: BoxDecoration(
                                                        color: Colors.grey[200],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: IconButton(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        icon: FaIcon(
                                                          FontAwesomeIcons
                                                              .minus,
                                                          size: 8,
                                                          color:
                                                              Color(0xff5117AC),
                                                        ),
                                                        onPressed: () {},
                                                      )),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    "2",
                                                    style: TextStyle(
                                                      color: Color(0xff5117AC),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 25,
                                                      width: 25,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff5117AC),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: IconButton(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        icon: FaIcon(
                                                          FontAwesomeIcons.plus,
                                                          size: 8,
                                                          color: Colors.white,
                                                        ),
                                                        onPressed: () {},
                                                      )),
                                                  SizedBox(
                                                    width: 25,
                                                  ),
                                                  Text(
                                                    "\$ 20",
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily: "Popins",
                                                      color: Color(0xff20D0C4),
                                                    ),
                                                  ),
                                                ]),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 210,
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF1395E),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.delete_outline,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
              ),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "SubTotal:",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Popins",
                              color: Color(0xff153E73),
                            ),
                          ),
                          Text(
                            "\$ 85 usd",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Popins",
                              color: Color(0xff153E73),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Envio:",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Popins",
                              color: Color(0xff153E73),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Gratis",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Popins",
                              color: Color(0xff153E73),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TOTAL",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Popins",
                              color: Color(0xff5117AC),
                            ),
                          ),
                          Text(
                            "\$ 85.00 usd",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Popins",
                              color: Color(0xff5117AC),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    actions: [
                                      FlatButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage()));
                                          },
                                          child: Text("Closed")),
                                    ],
                                    title: Text("Thanks for u Shopping "),
                                  ));
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            gradient: LinearGradient(colors: [
                              Color(0xff481A94),
                              Color(0xff2FC3BF),
                            ]),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                              child: Text(
                            "Realizar compra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Popins",
                              color: Colors.white,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Code is here
            ],
          ),
        ),
      ),
    );
  }
}

List<Lists4> list4 = [
  Lists4(image: "images/l1.jpg", title: "Big Burger Queso"),
  Lists4(image: "images/l2.jpg", title: "Big Burger Queso"),
  Lists4(image: "images/l3.jpg", title: "Big Burger Queso"),
  Lists4(image: "images/l4.jpg", title: "Big Burger Queso"),
];

import 'package:delivery_food_xd/class%20list.dart';
import 'package:flutter/material.dart';

import 'class list.dart';
import 'last_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/burggerback2.png"),
                )),
            child: Stack(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              ////CODE
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "Hamburguesa especial",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Popins",
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 450,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Descripción",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Popins",
                                color: Color(0xff153E73),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Popins",
                                color: Color(0xff153E73),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Ingredientes",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Popins",
                                    color: Color(0xff153E73),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "10 ingredientes",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Popins",
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 150,
                              color: Colors.transparent,
                              child: ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  itemCount: list3.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext context,
                                          int index) =>
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  child: Container(
                                                    height: 120,
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                    ),
                                                    child: Image.asset(
                                                      list3[index].image,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                list3[index].title,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Popins",
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LastPage()));
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xff472397),
                                            Color(0xff2EC9C1)
                                          ],
                                        )),
                                    child: Center(
                                        child: Text(
                                      "Ordenar ahora",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Popins",
                                        color: Colors.white,
                                      ),
                                    )),
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  "\$ 12.58",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Popins",
                                    color: Color(0xff472397),
                                  ),
                                ),
                              ],
                            ),

                            //code is here
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: 210,
                  left: 250,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Icon(
                      Icons.favorite_border_sharp,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

List<Lists3> list3 = [
  Lists3(image: "images/M1.jpg", title: "Arrachera"),
  Lists3(image: "images/M2.jpg", title: "Pan ajonjoli"),
  Lists3(image: "images/M3.jpg", title: "Lechuga"),
  Lists3(image: "images/M4.jpg", title: "Cebolla"),
];

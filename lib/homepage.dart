import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Mainpage.dart';
import 'class list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 65,
                  decoration:
                      BoxDecoration(color: Colors.grey[200], boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 10),
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white60,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Color(0xff5117AC),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Buscar",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Popins",
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Inicio",
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: "Popins",
                              color: Color(0xff5117AC),
                              fontWeight: FontWeight.w700),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Image.asset(
                              "images/bell.png",
                              fit: BoxFit.cover,
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "images/discount.png",
                              fit: BoxFit.cover,
                              height: 20,
                              width: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Explorar  categorias",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Popins",
                          color: Color(0xff153E73),
                        ),
                      ),
                      Text(
                        "Ver todos",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Popins",
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  color: Colors.transparent,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: list.length,
                    //shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) => Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: list[index].color,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 65,
                                width: 65,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(list[index].image),
                                ),
                              ),
                            ),
                            Text(
                              list[index].title,
                              style: TextStyle(
                                  color: Color(0xff153E73),
                                  fontFamily: "Popins",
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Productos  populares",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Popins",
                      color: Color(0xff153E73),
                    ),
                  ),
                ),
                Container(
                  height: 230,
                  color: Colors.transparent,
                  child: ListView.builder(
                    itemCount: list1.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 210,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 6.5,
                                    spreadRadius: 1,
                                  )
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 140),
                                    child: Icon(
                                      Icons.favorite_border_sharp,
                                      size: 20,
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 90,
                                                color: Colors.grey[500]),
                                          ]),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (conntext) =>
                                                      MainPage()));
                                        },
                                        child: Image.asset(
                                          list1[index].image,
                                          height: 95,
                                          width: 95,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    list1[index].title,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[700],
                                      fontFamily: "Popins",
                                    ),
                                  ),
                                  Text(
                                    list1[index].subtitle,
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[600],
                                      fontFamily: "Popins",
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        list1[index].text,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff153E73),
                                          fontFamily: "Popins",
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey[100],
                                        ),
                                        child: Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          size: 20,
                                          color: Color(0xff153E73),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Recomendados",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Popins",
                      color: Color(0xff153E73),
                    ),
                  ),
                ),
                Container(
                  height: 160,
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: list2.length,
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 100,
                        width: 300,
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              height: 115,
                              width: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 10,
                                      color: Colors.grey[350],
                                    )
                                  ]),
                              child: Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    height: 115,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Naturales",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: "Popins",
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.favorite,
                                                color: Colors.red,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Malteadas tropicales",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Popins",
                                              color: Color(0xff153E73),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Elaborado con jugos naturales",
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: "Popins",
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Spacer(),
                                          Row(
                                            children: [
                                              Text(
                                                "\$12.58",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Popins",
                                                  color: Color(0xff153E73),
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                height: 25,
                                                width: 25,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.grey[200],
                                                ),
                                                child: Icon(
                                                  Icons.arrow_forward_ios_sharp,
                                                  size: 20,
                                                  color: Color(0xff153E73),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 40,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Image.asset(
                                  list2[index].image,
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //Code is here
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<Lists> list = [
  Lists(image: "images/1.png", title: "Tacos", color: Color(0xffD0E6A5)),
  Lists(image: "images/2.png", title: "Frias", color: Color(0xff86E3CE)),
  Lists(image: "images/3.png", title: "Burgar", color: Color(0xffFFDD95)),
  Lists(image: "images/4.png", title: "Pizza", color: Color(0xffFFACAC)),
  Lists(image: "images/5.png", title: "Burritos", color: Color(0xffCCAAD9)),
];
List<Lists1> list1 = [
  Lists1(
      image: "images/bigpizza.png",
      title: "Pizza Clásica",
      subtitle: "Salsa clásica de la casa",
      text: "\$12.58"),
  Lists1(
      image: "images/burger2.png",
      title: "Hamburguesa mix",
      subtitle: "Doble carne con queso",
      text: "\$16.40"),
  Lists1(
      image: "images/bigpizza.png",
      title: "Pizza Calsilo",
      subtitle: "Salsa clásica delices",
      text: "\$20.50"),
];
List<Lists2> list2 = [
  Lists2(
      image: "images/glass.png",
      title: "Naturales",
      subtitle: "Malteadas tropicales",
      text: "Elaborado con jugos naturales",
      minitext: "\$12.58"),
  Lists2(
      image: "images/glass2.png",
      title: "Naturales",
      subtitle: "Malteadas tropicales",
      text: "Salsa clásica de la casa",
      minitext: "\$20.58"),
  Lists2(
      image: "images/Apple.png",
      title: "Naturales",
      subtitle: "Malteadas tropicales",
      text: "Elaborado con jugos naturales",
      minitext: "\$40.58"),
  Lists2(
      image: "images/Stawebaery.png",
      title: "Naturales",
      subtitle: "Malteadas tropicales",
      text: "Elaborado con jugos naturales",
      minitext: "\$10.58"),
];

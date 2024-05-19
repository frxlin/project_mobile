import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class SingleItemScreen extends StatelessWidget {
  final String img;

  SingleItemScreen(this.img);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
                child: Padding(
      padding: EdgeInsets.only(top: 30, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 25),
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: const Color.fromARGB(255, 2, 2, 2),
                  ))),
          SizedBox(height: 50),
          Center(
              child: Image.asset(
            "assets/imagens/$img.png",
            width: MediaQuery.of(context).size.width / 1.2,
          )),
          SizedBox(height: 50),
          Padding(
              padding: EdgeInsets.only(left: 25, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Melhor café",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        letterSpacing: 3,
                      )),
                  SizedBox(height: 20),
                  Text(img,
                      style: TextStyle(
                        fontSize: 30,
                        letterSpacing: 1,
                        color: Colors.black,
                      )),
                  SizedBox(height: 25),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                padding: EdgeInsets.all(15),
                                width: 120,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 7, 7, 7)
                                          .withOpacity(0.2),
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(children: [
                                  Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  SizedBox(width: 15),
                                  Text("2",
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 17, 17, 17))),
                                  SizedBox(width: 15),
                                  Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  )
                                ])),
                            Text("\$30.20",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 51, 50, 50),
                                ))
                          ])),
                  SizedBox(height: 20),
                  Text(
                    "O café é benéfico por aumentar a energia, melhorar o desempenho mental e físico, fornecer antioxidantes, reduzir o risco de doenças como Parkinson e diabetes tipo 2, ajudar na perda de peso e promover interação socia",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 2, 2, 2).withOpacity(0.4),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(children: [
                    Text("volume: 60ml",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 3, 3, 3))),
                  ]),
                  SizedBox(height: 60),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 50),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Text("adicionar no carrinho",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 41, 35, 35),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                )))
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    ))));
  }
}

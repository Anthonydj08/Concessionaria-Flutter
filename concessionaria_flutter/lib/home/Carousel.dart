import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

Widget slideFotos() {
  final List<String> imagemList = [
    'assets/imagens/moto1.jpg',
    'assets/imagens/moto2.jpg',
    'assets/imagens/moto3.jpg',
    'assets/imagens/moto4.jpg',
    'assets/imagens/moto5.jpg',
  ];

  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Center(
      child: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(milliseconds: 3000),
        ),
        items: imagemList
            .map(
              (e) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      e,
                      width: 1050,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    ),
  );
}

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:jcargo/Model/slide.dart';
import 'package:jcargo/Pages/Homepage.dart';
import 'package:jcargo/Pages/Login.dart';
import 'package:jcargo/Pages/Register.dart';
import 'package:jcargo/Widget/SlideItem.dart';
import 'package:jcargo/Widget/slide_dots.dart';

class GetStarted extends StatefulWidget {
  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  final PageController _pageController = PageController(initialPage: 0);

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 10), (Timer timer) {
      if (_currentPage < 0) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChange(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(children: [
          Expanded(
              child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                PageView.builder(
                  itemCount: slideList.length,
                  itemBuilder: (ctx, i) => SliderItem(i),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: _onPageChange,
                ),
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 35),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (int i = 0; i < slideList.length; i++)
                            if (i == _currentPage)
                              const SlideDots(true)
                            else
                              const SlideDots(false)
                        ],
                      ),
                    )
                  ],
                )
              ])),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()),
                    );
                  },
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      elevation: 1,
                      padding: const EdgeInsets.all(15),
                      backgroundColor: Colors.amberAccent),
                  child: const Text(
                    "Get started",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Have an account?',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 150,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          padding: const EdgeInsets.all(12),
                          elevation: 1,
                          backgroundColor: Colors.teal),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}

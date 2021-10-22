import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RepoSlider extends StatefulWidget {

  final String userLogin;

  RepoSlider({ Key? key, required this.userLogin}) : super(key: key);

  @override
  _RepoSliderState createState() => _RepoSliderState();
}

class _RepoSliderState extends State<RepoSlider> {

  final List repoList = [
    {
      "title" : "foo",
    },
    {
      "title" : "bar",
    },
    {
      "title" : "baz",
    },
  ];

  @override
  Widget build(BuildContext context) {

    return Container (
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
            ),
            items: repoList.map((item) {
              return Container (
                child: Text(item["title"]),
              );
            }).toList()
          ),
        ],
      ),
    );
  }
}

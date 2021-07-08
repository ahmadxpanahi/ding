import 'package:ding/features/todayScreen/entity/todayData.dart';
import 'package:ding/features/todayScreen/todayWidgets.dart';
import 'package:flutter/material.dart';

class TodayScreen extends StatefulWidget {
  const TodayScreen({Key? key}) : super(key: key);

  @override
  _TodayScreenState createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {

  List<TodayData> list = <TodayData>[
    TodayData(
        enterTime: DateTime.now(),
        imgUrl: 'https://thumbs.dream'
            'stime.com/b/vector-chador-headgear-style-beautiful-arabic-mu'
            'slim-woman-vector-chador-headgear-st'
            'yle-beautiful-arabic-muslim-woman-ill'
            'ustration-106204293.jpg',
        name: 'زهره صحت'),
    TodayData(
        enterTime: DateTime.now(),
        imgUrl: 'https://thumbs.dream'
            'stime.com/b/vector-chador-headgear-style-beautiful-arabic-mu'
            'slim-woman-vector-chador-headgear-st'
            'yle-beautiful-arabic-muslim-woman-ill'
            'ustration-106204293.jpg',
        name: 'زهره صحت'),
    TodayData(
        enterTime: DateTime.now(),
        imgUrl: 'https://thumbs.dream'
            'stime.com/b/vector-chador-headgear-style-beautiful-arabic-mu'
            'slim-woman-vector-chador-headgear-st'
            'yle-beautiful-arabic-muslim-woman-ill'
            'ustration-106204293.jpg',
        name: 'زهره صحت'),
    TodayData(
        enterTime: DateTime.now(),
        imgUrl: 'https://thumbs.dream'
            'stime.com/b/vector-chador-headgear-style-beautiful-arabic-mu'
            'slim-woman-vector-chador-headgear-st'
            'yle-beautiful-arabic-muslim-woman-ill'
            'ustration-106204293.jpg',
        name: 'زهره صحت'),
    TodayData(
        enterTime: DateTime.now(),
        imgUrl: 'https://thumbs.dream'
            'stime.com/b/vector-chador-headgear-style-beautiful-arabic-mu'
            'slim-woman-vector-chador-headgear-st'
            'yle-beautiful-arabic-muslim-woman-ill'
            'ustration-106204293.jpg',
        name: 'زهره صحت'),
    TodayData(
        enterTime: DateTime.now(),
        imgUrl: 'https://thumbs.dream'
            'stime.com/b/vector-chador-headgear-style-beautiful-arabic-mu'
            'slim-woman-vector-chador-headgear-st'
            'yle-beautiful-arabic-muslim-woman-ill'
            'ustration-106204293.jpg',
        name: 'زهره صحت'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (_,index){
        return ListItem(todayData: list[index]);
      },
    );
  }
}

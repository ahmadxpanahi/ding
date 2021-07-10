
import 'package:ding/src/feature/staff/widgets/list_item.dart';
import 'package:flutter/material.dart';
import '../../../domain/entity/staff_data.dart';

class StaffScreen extends StatefulWidget {
  const StaffScreen({Key? key}) : super(key: key);

  @override
  _StaffScreenState createState() => _StaffScreenState();
}

class _StaffScreenState extends State<StaffScreen> {

  List<StaffData> list = <StaffData>[
    StaffData(
        status: 'فعال',
        imgUrl: 'https://thumbs.dream'
            'stime.com/b/vector-chador-headgear-style-beautiful-arabic-mu'
            'slim-woman-vector-chador-headgear-st'
            'yle-beautiful-arabic-muslim-woman-ill'
            'ustration-106204293.jpg',
        name: 'زهره صحت'),
    StaffData(
        status: 'فعال',
        imgUrl: 'https://thumbs.dream'
            'stime.com/b/vector-chador-headgear-style-beautiful-arabic-mu'
            'slim-woman-vector-chador-headgear-st'
            'yle-beautiful-arabic-muslim-woman-ill'
            'ustration-106204293.jpg',
        name: 'زهره صحت'),
    StaffData(
        status: 'فعال',
        imgUrl: 'https://thumbs.dream'
            'stime.com/b/vector-chador-headgear-style-beautiful-arabic-mu'
            'slim-woman-vector-chador-headgear-st'
            'yle-beautiful-arabic-muslim-woman-ill'
            'ustration-106204293.jpg',
        name: 'زهره صحت'),
    StaffData(
        status: 'فعال',
        imgUrl: 'https://thumbs.dream'
            'stime.com/b/vector-chador-headgear-style-beautiful-arabic-mu'
            'slim-woman-vector-chador-headgear-st'
            'yle-beautiful-arabic-muslim-woman-ill'
            'ustration-106204293.jpg',
        name: 'زهره صحت'),
    StaffData(
        status: 'فعال',
        imgUrl: 'https://thumbs.dream'
            'stime.com/b/vector-chador-headgear-style-beautiful-arabic-mu'
            'slim-woman-vector-chador-headgear-st'
            'yle-beautiful-arabic-muslim-woman-ill'
            'ustration-106204293.jpg',
        name: 'زهره صحت'),
    StaffData(
        status: 'فعال',
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
        return ListItem(staffData: list[index],);
      },
    );
  }
}

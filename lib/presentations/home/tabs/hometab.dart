import 'package:flutter/material.dart';
import 'package:macverin_assignment/core/color/colors.dart';
import 'package:macverin_assignment/core/constent/constent.dart';

class HomeTabs extends StatelessWidget {
  const HomeTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final tabname = [
           'Art'  ,
          'Fashion' ,
          'tech' ,
          'Legal' ,
    ];
    return SizedBox(
      height: 35,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
          itemBuilder:(context, index) => TabCard(title: tabname[index]),
          
          separatorBuilder:(context, index) => width20,
          itemCount: tabname.length),
    );
  }
}



class TabCard extends StatelessWidget {
  const TabCard({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 10,
            width: 100,
          
            decoration: BoxDecoration(
              color: tabbarcolor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kwhitecolor)
            ),
            child: Center(child: Text(title),),
          );
  }
}
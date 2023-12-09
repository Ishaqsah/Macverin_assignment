import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:macverin_assignment/core/color/colors.dart';
import 'package:macverin_assignment/core/constent/constent.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:macverin_assignment/presentations/userdata_screen/user_data.dart';


class Listofhomecard extends StatelessWidget {
  const Listofhomecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            itemBuilder:(context, index) => HomeCardWidget() ,
            separatorBuilder:(context, index) => height10 ,
            itemCount: 10));
  }
}




class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({super.key});
    
   
  @override
  Widget build(BuildContext context) {






    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder:(context) {
          return  
        const  UserDatascreen();
        
        },));
      },
      child: Container(
        height: 400,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
            color: profilecardcolor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: profilecardbordercolor)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                    height: 43,
                    width: 43,
                    child: SvgPicture.asset(
                      'assets/Icons/profile Icon.svg',
                    )),
                width10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Doe',
                      style: normaltext(18),
                    ),
                    Text(
                      '10 mint',
                      style: colortext(14, Colors.grey),
                    )
                  ],
                ),
                Spacer(),
                Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    color: tabbarcolor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: kwhitecolor),
                  ),
                  child: Center(
                    child: Text(
                      'Heath care',
                      style: normaltext(12),
                    ),
                  ),
                ),
                width10,
                Icon(
                  Icons.more_vert_outlined,
                  size: 34,
                )
              ],
            ),
            height20,
            Text(
              'Food waste or food loss refers to uneaten or discarded food.',
              style: boldtext(12),
            ),
            height20,
            Text(
              "Some avenues that can be explored are educating farmers on\good storage practices, recycling and composting, providing\transportation and storage facilities, re-distributing leftover \food from parties and events, and setting up compost plants \and food waste management platforms.",
            ),
            height30,
            // 
            // audioplayer
            SizedBox(
              height: 40,
              width: 340,
              child: SvgPicture.asset('assets/Icons/progress bar.svg')),
            height20,
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 35,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xff555555), width: 2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Vote',
                        style: colortext(10, Colors.green),
                      ),
                      VerticalDivider(
                        color: Color(0xff555555),
                        thickness: 2,
                      ),
                      Text(
                        'heat',
                        style: colortext(10, Colors.red),
                      )
                    ],
                  ),
                ),
                width10,
                Text(
                  '10k Voted',
                  style: colortext(14, Color(0xffB7B7B7)),
                ),
                Spacer(),
                SizedBox(
                    height: 40,
                    width: 40,
                    child: SvgPicture.asset('assets/Icons/outline massage.svg')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

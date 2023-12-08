import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:macverin_assignment/core/color/colors.dart';

ValueNotifier<int> indexchangenotifier = ValueNotifier(0);

class BottomnavigationWidget extends StatelessWidget {
  const BottomnavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexchangenotifier,
        builder: (context, newindex, _) {
          return BottomNavigationBar(
              currentIndex: newindex,
              onTap: (index) {
                indexchangenotifier.value = index;
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: appthemecolor,
            
              fixedColor: kwhitecolor,
              unselectedItemColor: kwhitecolor,
            
              
              
             
              
              items:  [
                BottomNavigationBarItem(
                    icon:  SizedBox(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset('assets/Icons/homeicon.svg')
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon:  SizedBox(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset('assets/Icons/ideaicon.svg')
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon:  SizedBox(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset('assets/Icons/jam_write.svg')
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.notifications_outlined,
                      size: 35,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset('assets/Icons/profile Icon.svg')
                    ),
                    label: ''),
              ]);
        });
  }
}

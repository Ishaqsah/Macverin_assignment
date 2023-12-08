import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:macverin_assignment/core/constent/constent.dart';
import 'package:macverin_assignment/core/main_widgets/bottom_navigation.dart';
import 'package:macverin_assignment/presentations/home/tabs/hometab.dart';
import 'package:macverin_assignment/presentations/home/widgets/home-card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
          child: Column(
            children: [
              Row(
                children: [
                  width20,
                  Text(
                    'IDUTE',
                    style: normaltext(30),
                  ),
                  const Spacer(),
                   Row(
                    children: [
                      SizedBox(
                height: 35,
                width: 35,
                child: SvgPicture.asset('assets/Icons/searchicon.svg')),
                      width20,
                       SizedBox(
                height: 35,
                width: 35,
                child: SvgPicture.asset('assets/Icons/chat.svg')),
                      
                      width10,
                    ],
                  )
                ],
              ),
              height20,
              const HomeTabs(),
              height20,
              HomeCardWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomnavigationWidget(),
    );
  }
}

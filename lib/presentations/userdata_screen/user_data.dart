import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:macverin_assignment/core/color/colors.dart';
import 'package:macverin_assignment/core/constent/constent.dart';
import 'package:macverin_assignment/presentations/userdata_screen/widgets/commetsUI.dart';

class UserDatascreen extends StatelessWidget {
  const UserDatascreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            height30,
            Row(
              children: [
                width20,
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: SizedBox(
                      height: 40,
                      width: 40,
                      child: SvgPicture.asset('assets/Icons/backbutton.svg')),
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
            height10,
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                      const Spacer(),
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
                      const Icon(
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
                  const Text(
                    "Some avenues that can be explored are educating farmers on\ngood storage practices, recycling and composting, providing\ntransportation and storage facilities, re-distributing leftover \nfood from parties and events, and setting up compost plants\nand food waste management platforms.",
                  ),
                  height30,
                 SizedBox(
              height: 40,
              width: 380,
              child: SvgPicture.asset('assets/Icons/progress bar.svg')),
            height20,
                  height20,
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        height: 35,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: const Color(0xff555555), width: 2)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Vote',
                              style: colortext(10, Colors.green),
                            ),
                            const VerticalDivider(
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
                        style: colortext(14, const Color(0xffB7B7B7)),
                      ),
                      const Spacer(),
                      SizedBox(
                          height: 40,
                          width: 40,
                          child: SvgPicture.asset(
                              'assets/Icons/outline massage.svg')),
                      Text(
                        "59k comments",
                        style: colortext(14, Colors.grey),
                      ),
                    ],
                  ),
                  height20,
                ],
              ),
            ),
            const Divider(
              color: kgreycolor,
            ),
            height10,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 35,
                      width: 35,
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
                      height5,
                      Text(
                        '10 mint ago',
                        style: colortext(14, Colors.grey),
                      ),
                      height5,
                      SizedBox(
                        height: 30,
                        width: MediaQuery.of(context).size.width - 70,
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.',
                          style: normaltext(14),
                        ),
                      ),
                      height5,
                      const Row(
                        children: [
                          Text('4'),
                          width5,
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            size: 20,
                          ),
                          width5,
                          Icon(Icons.reply_outlined)
                        ],
                      ),
                      height5,
                      Text(
                        'Replies:',
                        style: colortext(12, kgreycolor),
                      ),
                      height10,
                      const CommentUiWidget(
                          username: 'Robert',
                          sizedboxsize: 120,
                          howmuchlikes: ''),
                    ],
                  ),
                ],
              ),
            ),
            height10,
           const Divider(
              color: kgreycolor,
            ),
            height10,
            const Padding(
                padding: EdgeInsets.all(8.0),
                child: CommentUiWidget(
                    username: "Alen Maxwell",
                    sizedboxsize: 70,
                    howmuchlikes: '')),
            height30,
          ],
        ),
      ),
    );
  }
}

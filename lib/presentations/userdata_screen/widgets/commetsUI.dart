import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:macverin_assignment/core/constent/constent.dart';

class CommentUiWidget extends StatelessWidget {
  const CommentUiWidget({super.key, required this.username, required this.sizedboxsize, required this.howmuchlikes});
  final String username;
  final num sizedboxsize;
  final String howmuchlikes;

  @override
  Widget build(BuildContext context) {
    return  Row(
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
                        username,
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
                        width: MediaQuery.of(context).size.width -sizedboxsize ,
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.',
                          style: normaltext(14),
                        ),
                      ),
                      height5,
                       Row(
                        children: [
                          Text(howmuchlikes),
                          width5,
                          const Icon(
                            Icons.thumb_up_alt_outlined,
                            size: 20,
                          ),
                          width5,
                          const Icon(Icons.reply_outlined)
                        ],
                      ),
                    ]
                  ),
                ]
    );
  }
}
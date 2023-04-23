import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern_assignment/controller/trendingPost_controller.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({super.key});

  @override
  Widget build(BuildContext context) {
    final trendingPostController = Get.put(TreandingPostController());
    return Obx(()=> Column(
      children: [
        Stack(
          alignment: Alignment(0, 1),
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.transparent),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(trendingPostController
                          .trendingPostList[
                              0]
                          .imageUrl))),
              height: 200,
              width: 380,
            ),
            InkWell(
                onTap: () {
                  trendingPostController.liked(0);
                },
                child: Row(children: [
                  Icon( trendingPostController.trendingPostList[0].isliked ?Icons.thumb_up : Icons.thumb_up_alt_outlined),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Like',
                    style: TextStyle(fontSize: 15),
                  )
                ])),
          ],
        ),
        Card(
          elevation: 0,
          color: Colors.transparent,
          child: ListTile(
            leading: ClipOval(
              child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(trendingPostController
                      .trendingPostList[
                          0]
                      .profileImage)),
            ),
            title: Text(trendingPostController
                .trendingPostList[
                    0]
                .name),
            subtitle: Text(trendingPostController
                .trendingPostList[
                    0]
                .timeAgo),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            trendingPostController
                .trendingPostList[
                    0]
                .Experience,
            style: TextStyle(fontSize: 15),
          ),
        )
      ],
    ));
  }
}

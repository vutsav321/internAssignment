import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern_assignment/controller/story_controller.dart';

class Story extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final storyController =Get.put(StoryController());
    return  ListView.separated(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: storyController.storyList.length,
                    separatorBuilder: (context,index){
                      return const SizedBox(width: 12,);
                    }, itemBuilder: (context,index) {
                      return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(border: Border.all(width: 5,color: Colors.transparent),
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(storyController.storyList[index].imageUrl))),
            height: 250,
            width: 125,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(storyController.storyList[index].name),
          )
        ],
      ),
    );});
    }
}
    
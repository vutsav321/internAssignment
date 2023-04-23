import 'package:get/get.dart';
import 'package:intern_assignment/model/story.dart';

class StoryController extends GetxController{
  var storyList = <Stories>[].obs;

@override
  void onInit() {
    gettingStories();
    super.onInit();
  }
  void gettingStories(){
    var getStories =[
      Stories('https://i.pinimg.com/originals/dc/d8/84/dcd884a9179a65f0ac5b5d626a4731e9.jpg', 'Mountains', true, '5K'),
      Stories('https://i.pinimg.com/originals/f1/4c/aa/f14caaec3bc4775d2a99bd010fa73a74.jpg', 'Pizzas', false, '0k'),
      Stories('https://i.pinimg.com/originals/51/94/91/5194915691f387742d6b1fe9cba9214d.jpg', 'Night', true, '2.5K'),
      Stories('https://i.pinimg.com/originals/ef/9c/6d/ef9c6dd6931c8379ca1e94a1906324fc.jpg', 'Travel', false, '0k')
    ];

    storyList.value = getStories;
  }
}
import 'package:get/get.dart';
import 'package:intern_assignment/model/trending_post.dart';

class TreandingPostController extends GetxController {
  var trendingPostList = <TrendingPosts>[].obs;

  @override
  void onInit() {
    gettingTrendingPosts();
    super.onInit();
  }

  void gettingTrendingPosts() {
    var getPosts = [
      TrendingPosts(
          imageUrl:
              'https://images.livemint.com/img/2019/10/18/600x338/90a164c0-ec17-11e9-b0c0-d3e0e4389836_1571392031710_1571392500332.jpg',
          name: 'Annette',
          profileImage:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5fu75cafobR8Afry9zemJ_pzUgTsBRZD2BP_fYY-g1g&usqp=CAU&ec=48600113',
          isliked: false,
          Experience:
              'Hello My friends,Today I did Skydiving for the first time it was a Crazy Experience.',
          timeAgo: '2 min Ago')
    ];
    trendingPostList.value = getPosts;
  }
  void liked(int index)
  {
    trendingPostList[index].isliked = !trendingPostList[index].isliked;
  }
}

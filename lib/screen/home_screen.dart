import 'package:flutter/material.dart';
import 'package:intern_assignment/story_list.dart';

import '../trendingpost_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: ListTile(
                  leading: ClipOval(
                    child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg')),
                  ),
                  title: Text('Sajon Islam'),
                  subtitle: Text('@sajon.co'),
                  trailing: Icon(Icons.search_rounded),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                child: Text(
                  'Stories',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                  height: 350,
                  child:Story()),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 0, 12),
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: ListTile(title: Text('Trending',style: TextStyle(fontSize: 35)),
                      trailing: Icon(Icons.arrow_circle_right_outlined)),
                    )),
                 TrendingList(),
            ],
          ),
        ),
      ),
    ));
  }
}

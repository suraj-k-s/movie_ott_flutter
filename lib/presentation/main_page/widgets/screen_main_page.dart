import 'package:flutter/material.dart';
import 'package:ott_flutter_app/presentation/downloads/widgets/screen_downloads.dart';
import 'package:ott_flutter_app/presentation/fast_laugh/fast_laugh.dart';
import 'package:ott_flutter_app/presentation/home/screen_home.dart';
import 'package:ott_flutter_app/presentation/main_page/widgets/bottom_navigation.dart';
import 'package:ott_flutter_app/presentation/new_and_hot/new_and_hot.dart';
import 'package:ott_flutter_app/presentation/search/search.dart';

// ignore: must_be_immutable
class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});
  // ignore: prefer_final_fields
  List _page=[
     const ScreenHome(),  const ScreenNewAndHot(), const ScreenFastLaugh(), const ScreenSearch(),  ScreenDownloads()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(      
    
      body:SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChangeNotifier, 
        builder: (context,int newIndex,_){
          return _page[newIndex];
        }),
      ),
      
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
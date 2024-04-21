import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ott_flutter_app/core/color/colors.dart';
import 'package:ott_flutter_app/core/color/constants.dart';
import 'package:ott_flutter_app/presentation/widgets/app_bar_widget.dart';

// ignore: must_be_immutable
class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final List _widgetList=[
      const Downloads_Heading(),
             const Section2(),
            const Section3()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBarWidget(title: '  Downloads')),
        body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context,index){
          return _widgetList[index];
        }, 
        separatorBuilder: (context, index){
         return const SizedBox(
          height: 25,
         );

        }, itemCount: _widgetList.length));
  }
}

// ignore: camel_case_types
class Downloads_Heading extends StatelessWidget {
  const Downloads_Heading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.settings,
          size: 30,
          color: kWhiteColor,
        ),
        Text(
          '  Smart Downloads',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageUrl,
    required this.angle,
  });

  final String imageUrl;
  final double angle;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        width: size.width * .35,
        height: size.width * .5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: NetworkImage(imageUrl)),
        ),
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    List imageUrl = [
      'https://akns-images.eonline.com/eol_images/Entire_Site/2018112/rs_634x939-181202195654-634.captain-marvel.12418.jpg?fit=around%7C634:939&output-quality=90&crop=634:939;center,top',
      'https://bollywoodmovieposters.com/wp-content/uploads/2021/11/pk-movie-aamir-khan-poster.jpg',
      'https://media.glamour.com/photos/56957ec78fa134644ec24e88/master/w_1600,c_limit/entertainment-2014-06-the-giver-movie-poster-main.jpg'
    ];
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for You,',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const Center(
          child: Text(
              style: TextStyle(fontSize: 17, color: Colors.grey),
              textAlign: TextAlign.center,
              'We will dowanload a personalized selection of\n movies and shows for you, so there is \nalways something to watch on your \ndevice'),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(.5),
                radius: size.width * .35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 170),
                child: DownloadsImageWidget(
                  imageUrl: imageUrl[1],
                  angle: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: DownloadsImageWidget(
                  imageUrl: imageUrl[2],
                  angle: -20,
                ),
              ),
              DownloadsImageWidget(
                imageUrl: imageUrl[0],
                angle: 0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: MaterialButton(
                onPressed: () {},
                color: buttonColorBlue,
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: const Text(
                  'Set Up',
                  style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
        kheight,
        MaterialButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: kWhiteColor,
            child: const Text(
              'See what you can download',
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  PageController controller;
  IntroPage(this.controller,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 18,),
          Text('SWU Domitory', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.redAccent),),
          ExtendedImage.asset('assets/imgs/SAM_0161.jpg'),
          SizedBox(height: 18,),
          Text('서울여자대학교 기숙사입니다'),
          Text('기숙사 광고 및 시설물 유지 보수 위한 앱니다~'),
          SizedBox(height: 18,),
          TextButton(onPressed: (){
            controller.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.ease);
          },
              child:
              Text('로그인하고 앱 시작하기', style: TextStyle(color: Colors.white),),
              style: TextButton.styleFrom(backgroundColor: Colors.blueAccent,),
          )

        ],
      ),
    );
  }
}

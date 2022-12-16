import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 18,),
          Text('somi mall', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.redAccent),),
          ExtendedImage.asset('assets/imgs/happy.jpg'),
          SizedBox(height: 18,),
          Text('소미야 서준이랑 우리 행복하자'),
          Text('어려움 있어도 우리 이기고 잘 살자~'),
          SizedBox(height: 18,),
          TextButton(onPressed: (){

          },
              child:
              Text('동대문 사입 시작하기', style: TextStyle(color: Colors.white),),
              style: TextButton.styleFrom(backgroundColor: Colors.blueAccent,),
          )

        ],
      ),
    );
  }
}

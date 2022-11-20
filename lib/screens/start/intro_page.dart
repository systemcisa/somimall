import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  PageController controller;
  IntroPage(this.controller,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext , BoxConstraints ) {
        Size size = MediaQuery.of(context).size;
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('somi mall',
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: Theme.of(context).colorScheme.primary)),
                    SizedBox(
                        height: size.height/1.5,
                        child: ExtendedImage.asset('assets/imgs/happy.jpg')),
                    Text('소미야 서준이랑 우리 행복하자'),
                    Text('어려움 있어도 우리 이기고 잘 살자~'),
                    SizedBox(
                      height: 18,
                    ),
                    TextButton(
                      onPressed: () {
                        controller.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.ease);
                      },
                      child: Text(
                          '         동대문 사입 시작하기         ',
                          style: Theme.of(context).textTheme.button ),
                      style: TextButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor
                      ),
                    ),
                  ],
                ),
              ),
            );
      },
    );
  }
}

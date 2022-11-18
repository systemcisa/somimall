import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:somimall/router/locations.dart';
import 'package:somimall/screens/home_screen.dart';
import 'package:somimall/screens/splash_screen.dart';
import 'package:somimall/utils/logger.dart';

final _routerDelegate = BeamerDelegate(locationBuilder: BeamerLocationBuilder(beamLocations: [HomeLocation()],));

void main(){
  logger.d('first message');
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Object>(
      future: Future.delayed(Duration(seconds: 3), ()=>100),
      builder: (context, snapshot) {
        return AnimatedSwitcher(duration: Duration(seconds: 1), child: _splashLoadingWidget(snapshot));
      }
    );
  }

  StatelessWidget _splashLoadingWidget(AsyncSnapshot<Object> snapshot) {
    if(snapshot.hasError){
      print('error occur while loading.');
      return Text('Error occur');
    }else if(snapshot.hasData){
      return SomiMall();
    }else{
      return SplashScreen();
    }
  }
}
class SomiMall extends StatelessWidget {
  const SomiMall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
     routeInformationParser: BeamerParser(), routerDelegate: _routerDelegate,
    );
  }
}

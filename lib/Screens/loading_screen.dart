import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:untitled/Screens/home_screen.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/services/Network.dart';
import 'package:untitled/services/random_number_generator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

   Network network = Network();

  @override
  void initState() {
    super.initState();
    getQuranData();
  }

  void getQuranData() async{
    RandomNumberGenerator rand = RandomNumberGenerator();
    int min = Constants.min;
    int max = Constants.max;
    int ayahNumber = rand.randomNumber(min, max);
    var quranData = await network.getAyah(ayahNumber);
    if(quranData['data']['text'].toString().split(' ').length < 10){
      getQuranData();
    }else{
      print('Text Length ===== ${quranData['data']['text'].toString().split(' ').length}');
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return HomeScreen(quranData: quranData);
      }));
    }
  }


  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: SpinKitPouringHourGlassRefined(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}

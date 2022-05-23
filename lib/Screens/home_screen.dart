import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/loading_screen.dart';

class HomeScreen extends StatelessWidget {

  final quranData;
  HomeScreen({this.quranData});



  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.lightBlue,
          image: DecorationImage(
            image: AssetImage('assets/bg2.png'),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(15)
                ),
                constraints: const BoxConstraints(
                  maxWidth: 300,
                  minHeight: 150

                ),

                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 400,
                        child: DefaultTextStyle(
                          style: const TextStyle(
                            fontFamily: 'NotoSansArabic',
                            color: Colors.black87,
                            wordSpacing: 2,
                          ),
                          child: Text(quranData['data']['surah']['name'],textAlign: TextAlign.center),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      DefaultTextStyle(
                        style: const TextStyle(
                          fontFamily: 'NotoSansArabic',
                          color: Colors.black87,
                          wordSpacing: 2,
                        ),
                        child: Text('${quranData['data']['text']}  {${quranData['data']['numberInSurah']}}',textAlign: TextAlign.center),
                      ),
                      // DefaultTextStyle(
                      //   style: const TextStyle(
                      //     wordSpacing: 2,
                      //   ),
                      //   child: Text(.toString(),textAlign: TextAlign.center),
                      // ),
                    ],
                  ),
                ),
              ),
              FlatButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return LoadingScreen();
                }));
              }, child: const DefaultTextStyle(
                style: TextStyle(),
                child: Text('Reload'),
              )
              )
            ],
          ),
        ),
    );
  }
}

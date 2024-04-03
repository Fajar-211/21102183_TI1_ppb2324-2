import 'package:flutter/material.dart';
import 'package:saving_app/colors.dart';
import 'package:saving_app/test_style.dart';

class OnBoardingPage extends StatelessWidget{
  const OnBoardingPage({Key? key}) : super(key: key);
  static const nameRoute = '/';

  @override 
  Widget build (BuildContext context){
    return Scaffold(
      body: Container(
        color: kBgColor.withOpacity(0.5),
        child: Column(
          children: [
          SafeArea(child: Image(
            image: AssetImage('assets/images1.jpeg'),
            ),
            ),
            SizedBox(
              height: 80,
              ),
              Container(
                padding: EdgeInsets.all(26),
                constraints: BoxConstraints.expand(
                  height: 300,
                  width: 315,
                ),
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                    ), 
                  ),
              child: Column(
                children: [
                  Text('Welcome',
                  style: kHeading5.copyWith(color: kBlack),
                  ),
                  SizedBox(
                    height: 15,
                    ),
                    Text('Welcome to fleet finance',
                    style: kSubtitle2.copyWith(color: kSuvaGray),
                    ),
                    SizedBox(
                      height: 70,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context, '/main', (route) => false);
                        },
                      child: Text(
                        'get started',
                        style: kButton1.copyWith(color: kWhite),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: kBlueRibbon,
                          padding: EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 36,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                              ),
                          ),
                        ),
                      )
                ],
                ),
              )
          ],
          ),
        ),
    );
  }
}
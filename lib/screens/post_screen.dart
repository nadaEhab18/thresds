
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [

          Image.asset('assets/images/BG Pattern.png',),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                // margin: EdgeInsets.symmetric(vertical: 50,horizontal: 30),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff1F1F1F),

                ),
                height: MediaQuery.of(context).size.height * 0.71,
                width: MediaQuery.of(context).size.width * 0.78,
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset('assets/images/Ellipse 1.png',
                        height: 40,
                        width: 40,
                      ),
                      title: Text('sharan3102',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffF6F6F6),
                        ),),
                      trailing: Image.asset('assets/images/Logo.png',
                        height: 25,
                        width: 25,),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.61,
                      // width: MediaQuery.of(context).size.width * 0.,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child: Image.asset('assets/images/Line 1 (1).png',
                              height: MediaQuery.of(context).size.height * 0.43,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.52,
                            width: MediaQuery.of(context).size.width * 0.59,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Text('''Believe in yourself and all that you are.Know that there is something inside you that is greater than any obstacle''',
                                  style: TextStyle(
                                    color: Color(0xffD0D0D0),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                                Image.asset('assets/images/IMG_5294 1.png',
                                  height: MediaQuery.of(context).size.height * 0.2,
                                ),
                                Image.asset('assets/images/navbar.png',
                                  height: 70,
                                  width: 70,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Text('via Threads',
                style: TextStyle(
                  color: Color(0xffA6A6A6),
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

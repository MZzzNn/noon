import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'constance.dart';

Widget singCard({String title, String image,Function function,Widget widget}) {
  return InkWell(
    highlightColor: Colors.white,
    splashColor: Colors.white.withOpacity(1),
    onTap:  function,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: kYellowColor,
          ),
          child: Stack(
            children: [
              Positioned(
                  top:15,
                  right: 13,
                  child: SvgPicture.network(image,height: 24)),
              widget
            ],
          ),
        ),
        SizedBox(height: 8),
        Text(title , style: kSingTitleTextStyle),
      ],
    ),
  );
}

Widget title({String title}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, bottom: 10,right: 15),
    child: Text(title, style: kTitleTextStyle,),
  );
}

Widget rowCard ({String image,String title,Widget widget,Function function}){
  return FlatButton(
    onPressed: function,
    child: Container(
      height: 50,
      child: Row(
        children: [
          SvgPicture.network(image,height: 24),
          SizedBox(width: 20,),
          Text(title, style:kRowCardTextStyle,),
          Expanded(child: SizedBox()),
          widget,
          SizedBox(width: 10,),
          Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: Colors.grey,
          ),
          SizedBox(width: 5,),
        ],
      ),
    ),
  );
}
Widget accountCard ({Widget widget,BuildContext context}){
  return  Container(
    height: 130,
    width: MediaQuery.of(context).size.width,
    child: Card(
      shadowColor: kCardElevColor,
      elevation: 1.5,
      child: widget,
    ),
  );
}
Widget icon({IconData icon ,double size,Function function}){
  return  Padding(
    padding: const EdgeInsets.symmetric(horizontal:19 ),
    child: InkWell(
        onTap:function ,
        child: Icon(icon,color: kIconColor,size: size,)
    ),
  );
}
Widget bottomTitle ({String title,Function function}){
  return InkWell(
      onTap:function,
      child: Text(title,style: kBottomTitleTextStyle)
  );

}
Widget point(){
  return Column(
    children: [
      Text('  ・  ',style: TextStyle(fontSize: 8,color: kIconColor, ),),
      Text('     ',style: TextStyle(fontSize: 10,color: kIconColor,height: 0.4 ),),
    ],
  );
}
launchFacebook() async {
  const url = 'https://m.facebook.com/noon/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
launchTwitter() async {
  const url = 'https://twitter.com/noon?s=09';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
launchInsta() async {
  const url = 'https://instagram.com/noon?igshid=4d322kx50piy';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
launchLinked() async {
  const url = 'https://www.linkedin.com/company/nooncom';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
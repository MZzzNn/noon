import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'components.dart';
import 'constance.dart';

class MyAccountView extends StatefulWidget {
  @override
  _MyAccountViewState createState() => _MyAccountViewState();
}

class _MyAccountViewState extends State<MyAccountView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: kAccountBgColor,
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                Image.asset('assets/images/logo.png', height: 45,),
                SizedBox(width: 2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(translator.translate('account title'), style: kMainTitleTextStyle,),
                    Text(translator.translate('account sub title'),
                        style: kSubTitleTextStyle),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: Card(
                shadowColor:kCardElevColor,
                elevation: 1.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    singCard(title:translator.translate('sign in'), image:'https://www.flaticon.com/svg/static/icons/svg/2948/2948035.svg',
                      widget: Container(),
                        function: (){},
                    ),
                    singCard(title:translator.translate('sign up'), image: 'https://www.flaticon.com/svg/static/icons/svg/2948/2948035.svg',
                        widget:Positioned(
                          top:9,
                          right: 7,
                          child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.blue[700],
                                  border: Border.all(color: Colors.white,width: 1.5)
                              ),
                              child: Icon(Icons.add,color: Colors.white,size: 10,)
                          ),
                        ),
                        function: (){}),
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView(
                 children: [
                   title(title: translator.translate('setting')),
                   accountCard(
                     context: context,
                     widget: Column(
                       children: [
                         SizedBox(height: 8),
                         rowCard(
                           title:translator.translate('country') ,
                           image: 'https://www.flaticon.com/svg/static/icons/svg/230/230666.svg',
                           widget:Container(
                             height: 20,
                             width: 30,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 image: DecorationImage(
                                     fit: BoxFit.cover,
                                     image: NetworkImage(
                                         'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/800px-Flag_of_Egypt.svg.png'))),
                           ),
                           function: (){}
                         ),
                         Divider(indent: 10, endIndent: 10,height: 8,),
                         rowCard(
                           title:translator.translate('lang') ,
                           image:'https://www.flaticon.com/svg/static/icons/svg/459/459602.svg' ,
                           widget: Text( translator.currentLanguage == 'en' ? 'العربية' : 'English', style: kRowCardTextStyle.copyWith(fontSize: 18),),
                           function: (){
                             translator.setNewLanguage(context, newLanguage:
                             translator.currentLanguage == 'ar' ? 'en' : 'ar',
                                 restart: true);
                           }
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height: 20,),
                   title(title: translator.translate('reach out to us')),
                   accountCard(
                     context: context,
                     widget: Column(
                       children: [
                         SizedBox(height: 8),
                         rowCard(
                           title:translator.translate('help'),
                           image: 'https://www.flaticon.com/svg/static/icons/svg/271/271823.svg',
                           widget:Container(),
                           function: ()=>launchHelp(),
                         ),
                         Divider(indent: 10, endIndent: 10,height: 8,),
                         rowCard(
                           title:translator.translate('contact us'),
                           image:'https://www.flaticon.com/svg/static/icons/svg/270/270739.svg' ,
                           widget: Container(),
                             function: ()=>launchContact(),
                         ),
                       ],
                     ),
                   ),
                   
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [

                       Padding(
                         padding: const EdgeInsets.only(top:25.0,bottom: 30),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             icon(icon: FontAwesomeIcons.facebookF,size:18,function:()=>launchFacebook()),
                             icon(icon: FontAwesomeIcons.twitter,size:18 ,function:()=>launchTwitter() ),
                             icon(icon: FontAwesomeIcons.instagram,size:22 ,function:()=>launchInsta() ),
                             icon(icon: FontAwesomeIcons.linkedinIn,size:18 ,function:()=>launchLinked() ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(bottom:15.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             bottomTitle(title:translator.translate('terms of use') ,function: (){}),
                             point(),
                             bottomTitle(title:translator.translate('terms of sale') ,function: (){}),
                             point(),
                             bottomTitle(title:translator.translate('privacy policy') ,function: (){}),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(bottom:15.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             bottomTitle(title:translator.translate('terms of u'),function: (){}),
                             point(),
                             bottomTitle(title:translator.translate('terms of s'),function: (){}),
                           ],
                         ),
                       ),
                       Text(translator.translate('version'),style: TextStyle(fontSize: 11,color: kVersionColor)),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 15),
                         child: Text(translator.translate('noon com'),style: kBottomTitleTextStyle),
                       ),
                     ],
                   )
              ],
            )
            ),
          ],
        ),
      ),
    );
  }

}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
       title: Row(
         children: [
           Container(
             width: 80,
               child: SvgPicture.network('https://k.nooncdn.com/s/app/2019/noon-bigalog/9ecabd63f372052dc11ef3cbf725bc2ced497c89/static/images/noon_logo_black_english.svg')),
           SizedBox(width: 10,),
           Expanded(child: Container(
             height: 35,
             child: TextFormField(
               decoration:  InputDecoration(
                 filled: true,
                 hintText: 'What are you looking for ?',
                 hintStyle: TextStyle(color: Colors.indigo[100],fontSize: 14),
                 fillColor:Colors.white,
                 suffixIcon: Icon(Icons.search,color: Colors.black54,),
                 contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(width: 1,color: Colors.grey[400]),
                   borderRadius: BorderRadius.all(Radius.circular(8.0)),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.grey[400],width: 1),
                   borderRadius: BorderRadius.all(Radius.circular(8.0)),
                 ),
               )
             ),
           ))
         ],
       ),
      ), 
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (_,index)=>Center(child: Text('data'),),),
    );
  }
}

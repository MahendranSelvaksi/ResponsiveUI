import 'package:flutter/cupertino.dart';

class ResponsivePage extends StatelessWidget{
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
          if(constraints.maxWidth < 600){
            return Center(
              child: Directionality(
                textDirection: TextDirection.ltr, // or TextDirection.rtl
                child: Text('Small screen ',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),),
              ));
          }else{
            return Center(
                child: Directionality(
                  textDirection: TextDirection.ltr, // or TextDirection.rtl
                  child: Text('Large screen ',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                    ),),
                ));
          }
    });
  }
  
}
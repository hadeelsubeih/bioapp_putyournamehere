import 'package:flutter/material.dart';
class BioCarde extends StatelessWidget {
  const BioCarde({
    required this.leadingIcon, required this.title,required this.subTitle,required this.TreainingIcon, this.marginBo=0, required this.onPressed,
    Key? key,
  }) : super(key: key);
  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData TreainingIcon;
  final double marginBo;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black54,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(color: Colors.amber,width: 1
        ),
      ),
      margin: EdgeInsetsDirectional.only(start: 20,end: 20,bottom: marginBo),
      child: ListTile(
        leading: Icon(leadingIcon,color: Colors.white30,
        ),

        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
              fontFamily: 'SourceSerifPro',
              fontWeight: FontWeight.bold),

        ),
        subtitle: Text(
          subTitle,
          style: TextStyle( color :Colors.white70,fontFamily: 'SourceSerifPro'),
        ),
        trailing: IconButton(
          color: Colors.white30,
         // onPressed: () { }
          onPressed:onPressed,
          icon: Icon(TreainingIcon),
        ),
      ),


    );
  }
}

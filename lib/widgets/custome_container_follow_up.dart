import 'package:flutter/material.dart';
Container CustomeContainer({
    required String content,
    required Color backgroundColor,
    IconData? icon, 
  }) {
  return Container(
    width: 108,
    height: 38,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          content,
          style: TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Icon(icon,color: Colors.white,),
      ],
    ),
  );
}



Container CustomeContainer3({
  required String content,
  required Color backgroundColor,
  required IconData icon,
}) {
  return Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(5),
    ),
    height: 25,
    // padding: EdgeInsets.all(5),
    padding: EdgeInsets.only(left: 5, right: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          content,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
        Icon(
          icon,
          color: Colors.white,
          size: 18,
        ),
      ],
    ),
  );
}




Container CustomeContainer22  ({
  // required Function onChanged,
  // required String cntent,
  double RadiusTopLeft = 0,
  double RadiusTopRight = 0,
  double RadiusBottomLeft = 0,
  double RadiusBottomRight = 0,
  double MarginRight = 0,
  double marginLeft =0,
  double? ContainerWidth,
  double ContainerHeight=35,
  // var selectedSueers = "الفاتحة",
  required Widget DropdownButton1 ,

}) {
  return Container(
    padding: EdgeInsets.only(right: 5, left: 5),
    width: ContainerWidth,
    height: ContainerHeight,
    margin: EdgeInsets.only(right: MarginRight,left: marginLeft),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black, width: .4),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(RadiusTopLeft),
          bottomLeft: Radius.circular(RadiusBottomLeft),
          topRight: Radius.circular(RadiusTopRight),
          bottomRight: Radius.circular(RadiusBottomRight)),
    ),
    child: Center(
      child: DropdownButton1,
        ),
  );
}

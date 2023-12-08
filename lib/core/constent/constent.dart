import 'package:flutter/material.dart';

// height sized box
const height10 = SizedBox(height: 10);
const height20 = SizedBox(height: 20);
const height30 = SizedBox(height: 30);

// width sizedbox

const width10 = SizedBox(width: 10);
const width20 = SizedBox(width: 20);
const width30 = SizedBox(width: 30);

// textstyle

TextStyle boldtext( double size) {
  return TextStyle(
    fontSize: size,
    fontWeight: FontWeight.bold,
  );
}


TextStyle normaltext(double size) {
  return TextStyle(
    fontSize: size,
  );
}

TextStyle colortext(double size , Color color) {
  return TextStyle(
    fontSize: size, 
    color: color,
  );
}



import 'package:flutter/material.dart';

class NumberAudio{
  String audioUri;
  MaterialColor buttonColor;
  String buttonText;

  NumberAudio(String aU, MaterialColor bColor, String bT){
    this.audioUri = aU;
    this.buttonColor = bColor;
    this.buttonText = bT;
  }
}
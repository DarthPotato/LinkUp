import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

DateTime generateTimeAWeekAgo() {
  return DateTime.now().subtract(Duration(days: 7));
}

String generateEmailPrompt(
  String personName,
  String companyName,
  String details,
  String myName,
) {
  return "Please help me generate a professional email and use proper email format. The body should be between 150 and 200 words. Address the email to $personName. My name is $myName so say it's from me at the bottom. The company is $companyName. Here are the details for this email: $details. Refer to my resume PDF for extra information specific to me that I can mention.";
}

String generateResponsePrompt(
  String responseType,
  String companyName,
  String details,
  String careerInterest,
) {
  return "Please help me with $responseType. Generate a response between 150 and 200 words. My career interest is $careerInterest. The company is $companyName. Here are the details for this task: $details. Refer to my resume PDF for extra information specific to me that I can mention.";
}

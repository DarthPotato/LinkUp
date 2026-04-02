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

String generateEmailPrompt(
  String personName,
  String companyName,
  String details,
) {
  return "Please help me generate a professional email and use proper email format. Address the email to $personName. The company is $companyName. Here are the details for this email: $details.";
}

String generateResponsePrompt(
  String responseType,
  String companyName,
  String details,
) {
  return "Please help me with $responseType. Generate a response less than 150 words max. The company is $companyName. Here are the details for this task: $details.";
}

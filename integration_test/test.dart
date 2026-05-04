import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:link_up/flutter_flow/flutter_flow_drop_down.dart';
import 'package:link_up/flutter_flow/flutter_flow_icon_button.dart';
import 'package:link_up/flutter_flow/flutter_flow_widgets.dart';
import 'package:link_up/flutter_flow/flutter_flow_theme.dart';
import 'package:link_up/index.dart';
import 'package:link_up/main.dart';
import 'package:link_up/flutter_flow/flutter_flow_util.dart';

import 'package:link_up/backend/firebase/firebase_config.dart';
import 'package:link_up/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();
  });

  setUp(() async {
    await authManager.signOut();
  });

  testWidgets('US2 - User Login', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(const MyApp());
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.tap(find.byKey(const ValueKey('LoginTab_cqp0')));
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.enterText(
        find.byKey(const ValueKey('Login-Email_3m1l')), 'test@gmail.com');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.enterText(
        find.byKey(const ValueKey('Login-Password_o9kx')), 'uu.UU2275765');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.scrollUntilVisible(
      find.byKey(const ValueKey('Login-Button_0q8t')),
      100.0,
      scrollable: find
          .descendant(
            of: find.byKey(const ValueKey('Column_v5m4')),
            matching: find.byType(Scrollable),
          )
          .first,
    );
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.tap(find.byKey(const ValueKey('Login-Button_0q8t')));
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    expect(find.text('Recent Professional Prep:'), findsOneWidget);
  });

  testWidgets('US4 Golden Path', (WidgetTester tester) async {
    _overrideOnError();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'testtest@gmail.com', password: 'testtest');
    await tester.pumpWidget(MyApp(
      entryPage: AiPageWidget(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.tap(find.byKey(const ValueKey('Text_kihw')));
    await tester.pumpAndSettle(const Duration(milliseconds: 10000));
    await tester.tap(find.byKey(const ValueKey('IconButton_4zp4')));
    await tester.pumpAndSettle(const Duration(milliseconds: 1000));
    expect(find.text('Search professional prep...'), findsOneWidget);
  });

  testWidgets('US1 Account Creation', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(const MyApp());
    await GoogleFonts.pendingFonts();

    await tester.tap(find.byKey(const ValueKey('SignupTab_rtit')));
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.enterText(find.byKey(const ValueKey('Signup-Email_f3we')),
        'unittestemail@gmail.com');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.enterText(
        find.byKey(const ValueKey('Signup-Password_a9r2')), 'password');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.enterText(
        find.byKey(const ValueKey('Signup-Confirm-Password_uld1')), 'password');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.tap(find.byKey(const ValueKey('Signup-Button_6xu1')));
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    expect(find.text('Profile'), findsOneWidget);
  });

  testWidgets('US3 - Profile Creation', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(MyApp(
      entryPage: ProfileWidget(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.enterText(
        find.byKey(const ValueKey('nameField_p6b5')), 'Name');
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.enterText(
        find.byKey(const ValueKey('careerField_v43m')), 'LinkUp');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.tap(find.byKey(const ValueKey('resumeButton_uou1')));
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    expect(
      tester
          .widget<FFButtonWidget>(
              find.byKey(const ValueKey('resumeButton_uou1')))
          .onPressed,
      isNotNull,
    );
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.tap(find.byKey(const ValueKey('profileButton_0fbg')));
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    expect(
      tester
          .widget<FFButtonWidget>(
              find.byKey(const ValueKey('profileButton_0fbg')))
          .onPressed,
      isNotNull,
    );
  });

  testWidgets('US5 - AI Feature Testing', (WidgetTester tester) async {
    _overrideOnError();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'yilmaztest@gmail.com', password: '1234567');
    await tester.pumpWidget(MyApp(
      entryPage: AiPageWidget(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.tap(find.byKey(const ValueKey('Text_zrwg')));
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.tap(find.byKey(const ValueKey('IconButton_5qm8')));
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.enterText(
        find.bySemanticsLabel(RegExp('Person Name Field')), 'TestBot');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.enterText(
        find.bySemanticsLabel(RegExp('Company Name Field')), 'EvilCorp');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.enterText(find.bySemanticsLabel(RegExp('Extra Details Field')),
        'I am applying to evilcorp, draft me a thank you email');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }
  // Web-specific error when interacting with TextInputType.emailAddress
  if (error.contains('setSelectionRange') &&
      error.contains('HTMLInputElement')) {
    return true;
  }

  return false;
}

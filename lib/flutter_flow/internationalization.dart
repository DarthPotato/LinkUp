import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'zh_Hans'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? zh_HansText = '',
  }) =>
      [enText, zh_HansText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Signup_Login
  {
    'a5luvs7u': {
      'en': 'LinkUp',
      'zh_Hans': '',
    },
    'lpjwin1c': {
      'en': 'Sign up',
      'zh_Hans': '',
    },
    'oy93mqj4': {
      'en': 'Email...',
      'zh_Hans': '',
    },
    'gf53nbrb': {
      'en': 'Password...',
      'zh_Hans': '',
    },
    'umqdjnof': {
      'en': 'Confirm Password...',
      'zh_Hans': '',
    },
    '0bjre6o9': {
      'en': 'Email is required',
      'zh_Hans': '',
    },
    'nhrzw9ip': {
      'en': 'Please choose an option from the dropdown',
      'zh_Hans': '',
    },
    'cprmfx3d': {
      'en': 'Password is required',
      'zh_Hans': '',
    },
    'htfw3a29': {
      'en': 'Please choose an option from the dropdown',
      'zh_Hans': '',
    },
    'p9sgdcxu': {
      'en': 'Confirm Password is required',
      'zh_Hans': '',
    },
    'gz7u3oqs': {
      'en': 'Please choose an option from the dropdown',
      'zh_Hans': '',
    },
    '0rv8pc31': {
      'en': 'Login',
      'zh_Hans': '',
    },
    'g1ikl20y': {
      'en': 'Email...',
      'zh_Hans': '',
    },
    'uqdf8c6z': {
      'en': 'Password...',
      'zh_Hans': '',
    },
    'l0b7rwmy': {
      'en': 'Email is required',
      'zh_Hans': '',
    },
    'eqjqofuu': {
      'en': 'Please choose an option from the dropdown',
      'zh_Hans': '',
    },
    'gbrvpn9l': {
      'en': 'Password is required',
      'zh_Hans': '',
    },
    'b6695y42': {
      'en': 'Please choose an option from the dropdown',
      'zh_Hans': '',
    },
    'igpxcvot': {
      'en': 'Login',
      'zh_Hans': '',
    },
    '2m48nnnl': {
      'en': 'Sign up',
      'zh_Hans': '',
    },
    '5j1he7h7': {
      'en': 'Home',
      'zh_Hans': '',
    },
  },
  // NPS_Question
  {
    'yiep5gos': {
      'en': 'How would you rate LinkUp on a scale from 1-10?',
      'zh_Hans': '',
    },
    '78qm2kgw': {
      'en': 'Submit',
      'zh_Hans': '',
    },
    '7ijfyxip': {
      'en': 'Home',
      'zh_Hans': '',
    },
  },
  // Email
  {
    'o056gm9p': {
      'en': 'Email Prep',
      'zh_Hans': '',
    },
    'p7jhea1b': {
      'en': 'Search email prep...',
      'zh_Hans': '',
    },
  },
  // ExpandedMeeting
  {
    'p6h6h1in': {
      'en': 'Prep Details',
      'zh_Hans': '',
    },
    'xemm0iqj': {
      'en': 'LinkUp',
      'zh_Hans': '',
    },
    'phz4m8my': {
      'en': 'Go Back',
      'zh_Hans': '',
    },
  },
  // Profile
  {
    'rshdrd0s': {
      'en': 'Profile',
      'zh_Hans': '',
    },
    'p6qfo0u2': {
      'en': 'Name..',
      'zh_Hans': '',
    },
    '0pt24ezq': {
      'en': 'Career Interest...',
      'zh_Hans': '',
    },
    'axfu4y1w': {
      'en': 'Upload Resume (PDF)',
      'zh_Hans': '',
    },
    'a0txm7db': {
      'en': '50%',
      'zh_Hans': '',
    },
    'obxp33ws': {
      'en': 'Complete Profile',
      'zh_Hans': '',
    },
    'g0uw8foz': {
      'en': 'Home',
      'zh_Hans': '',
    },
  },
  // AiPage
  {
    'wakh6v4o': {
      'en': 'LinkUp AI',
      'zh_Hans': '',
    },
    'hppmc2a3': {
      'en':
          'Hello and welcome to the LinkUp AI. See your recent requests here. Click to see expanded view or see all to see and add more.',
      'zh_Hans': '',
    },
    'ua39h0kp': {
      'en': 'Recent Professional Prep:',
      'zh_Hans': '',
    },
    'v447sgnj': {
      'en': 'See all',
      'zh_Hans': '',
    },
    'pv8hox47': {
      'en': 'Recent Email Prep:',
      'zh_Hans': '',
    },
    '8qd000ix': {
      'en': 'See all',
      'zh_Hans': '',
    },
  },
  // Base_Meeting_Prep
  {
    'uisbavmw': {
      'en': 'Professional Prep',
      'zh_Hans': '',
    },
    'l0cha1xp': {
      'en': 'Search professional prep...',
      'zh_Hans': '',
    },
  },
  // ExpandedEmail
  {
    'ku12fajj': {
      'en': 'Prep Details',
      'zh_Hans': '',
    },
    'uo3gg8u6': {
      'en': 'LinkUp',
      'zh_Hans': '',
    },
    'g5hehkav': {
      'en': 'Go Back',
      'zh_Hans': '',
    },
    'rntwumkz': {
      'en': 'Home',
      'zh_Hans': '',
    },
  },
  // EmailPrepInputs
  {
    'sxeoegaa': {
      'en': 'New Preparation for an Email',
      'zh_Hans': '',
    },
    'sc54e8lr': {
      'en': 'Person Name',
      'zh_Hans': '',
    },
    'h3flrh12': {
      'en': 'Company Name',
      'zh_Hans': '',
    },
    'i8wqswhs': {
      'en': 'Extra Details',
      'zh_Hans': '',
    },
    'hapdldz9': {
      'en': 'Cancel',
      'zh_Hans': '',
    },
    'knhvhmr9': {
      'en': 'Submit',
      'zh_Hans': '',
    },
  },
  // ProfessionalPrepInputs
  {
    'd099cx41': {
      'en': 'New Preparation for a Professional Event',
      'zh_Hans': '',
    },
    'gj5h7nnm': {
      'en': 'Task Type',
      'zh_Hans': '',
    },
    'n2uzajr6': {
      'en': 'Select...',
      'zh_Hans': '',
    },
    'ryyy7qcy': {
      'en': 'Search...',
      'zh_Hans': '',
    },
    'oywzhvw7': {
      'en': 'Get Company Information',
      'zh_Hans': '',
    },
    'ny2xja9z': {
      'en': 'Interview/Meeting Preparation',
      'zh_Hans': '',
    },
    'lr5ykhj6': {
      'en': 'Ask Interview/Meeting Questions',
      'zh_Hans': '',
    },
    'jpjwzgr7': {
      'en': 'Networking Preparation',
      'zh_Hans': '',
    },
    'mmj8udbn': {
      'en': 'Company Name',
      'zh_Hans': '',
    },
    '61r8jde0': {
      'en': 'Extra Details',
      'zh_Hans': '',
    },
    'yov374ko': {
      'en': 'Cancel',
      'zh_Hans': '',
    },
    'v05yw9gz': {
      'en': 'Submit',
      'zh_Hans': '',
    },
  },
  // Miscellaneous
  {
    '7wmeei07': {
      'en': '',
      'zh_Hans': '',
    },
    '51wrv1nf': {
      'en': '',
      'zh_Hans': '',
    },
    'ctr75ny7': {
      'en': '',
      'zh_Hans': '',
    },
    'pdwy68im': {
      'en': '',
      'zh_Hans': '',
    },
    'wh55e6us': {
      'en': '',
      'zh_Hans': '',
    },
    'gfgbc43z': {
      'en': '',
      'zh_Hans': '',
    },
    '9hehhoaf': {
      'en': '',
      'zh_Hans': '',
    },
    'nbmwus0r': {
      'en': '',
      'zh_Hans': '',
    },
    'ynpc9p8g': {
      'en': '',
      'zh_Hans': '',
    },
    'ltu5h0d9': {
      'en': '',
      'zh_Hans': '',
    },
    'ayy40al3': {
      'en': '',
      'zh_Hans': '',
    },
    'oviq5s3z': {
      'en': '',
      'zh_Hans': '',
    },
    'u2znza4n': {
      'en': '',
      'zh_Hans': '',
    },
    '2muvdexp': {
      'en': '',
      'zh_Hans': '',
    },
    '09qhk4rh': {
      'en': '',
      'zh_Hans': '',
    },
    'ubpn9i5o': {
      'en': '',
      'zh_Hans': '',
    },
    '104xetgu': {
      'en': '',
      'zh_Hans': '',
    },
    'hge9ahhg': {
      'en': '',
      'zh_Hans': '',
    },
    'n9drqxva': {
      'en': '',
      'zh_Hans': '',
    },
    '8u5kxfai': {
      'en': '',
      'zh_Hans': '',
    },
    'mo8ric52': {
      'en': '',
      'zh_Hans': '',
    },
    'pbe0slkn': {
      'en': '',
      'zh_Hans': '',
    },
    'dxeqwct6': {
      'en': '',
      'zh_Hans': '',
    },
    '2296ch1k': {
      'en': '',
      'zh_Hans': '',
    },
    'y6loawib': {
      'en': '',
      'zh_Hans': '',
    },
  },
].reduce((a, b) => a..addAll(b));

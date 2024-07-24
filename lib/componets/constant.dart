import 'package:url_launcher/url_launcher.dart';

class AppText {
  static const String appName = 'Fiscus';
  static const String appVersion = 'Version 1.0.0';
  static const String appVersionNumber = ' 1.0.0.240518499';
  static const String appUpdateDate = '15-May-2024';
  static const String appTermsConditonUpdateDate = '15-Aug-2024';
  static const String authorName = 'Malesela Malapane';
  static const String companyName = 'Hello Tech Malayalam';
  static const String website = 'www.hellotechmalayalam.com';
  static const String email = 'simonmalapane018@gmail.com';
  static const String linkedin = 'linkedin.com/in/joyaljoseph';
  static const String contactNumber = '+91 623 8189 424';
}

email() async {
  Uri url = Uri.parse('https://mail.google.com/mail/u/0/#inbox');
  if (await launchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

youTube() async {
  Uri url = Uri.parse('https://www.youtube.com/@HelloTechMalayalam');
  if (await launchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

linkidin() async {
  Uri url = Uri.parse('https://www.linkedin.com/in/joyaljoseph/');
  if (await launchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

instagram() async {
  Uri url = Uri.parse('https://www.instagram.com/hellotechmalayalam/');
  if (await launchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

facebook() async {
  Uri url = Uri.parse('https://www.facebook.com/hellotechmalayalamonline');
  if (await launchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

website() async {
  Uri url = Uri.parse('https://hellotechmalayalam.com');
  if (await launchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

gitHub() async {
  Uri url = Uri.parse('https://github.com/joyaljosephnote');
  if (await launchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

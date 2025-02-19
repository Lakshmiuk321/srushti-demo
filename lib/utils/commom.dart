import 'package:url_launcher/url_launcher.dart';

class Common {
  launchUrl(url) async {
    await launchUrl(Uri.parse(url));
  }
}

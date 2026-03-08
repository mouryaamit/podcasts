// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Container(
      width: width ?? double.infinity,
      height: height,
      color: const Color(0xFFE3E3E3),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      child: isMobile ? _mobileFooter() : _desktopFooter(),
    );
  }

  Widget _desktopFooter() {
    return Row(
      children: [
        const Text(
          'Copyright © 2026 Jocata. All rights reserved.',
          style: TextStyle(
            color: Color(0xFF5C5C5C),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: "Inter",
          ),
        ),
        const SizedBox(width: 20),
        const SizedBox(
          height: 30,
          child: VerticalDivider(
            thickness: 1.0,
            color: Color(0xFF5C5C5C),
          ),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: () async {
            await launchURL("https://www.linkedin.com/company/jocata/");
          },
          child: const FaIcon(
            FontAwesomeIcons.linkedin,
            size: 20,
            color: Color(0xFF5C5C5C),
          ),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () async {
            await launchURL("https://www.jocata.com/");
          },
          child: const Icon(
            Icons.language,
            size: 20,
            color: Color(0xFF5C5C5C),
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () async {
            await launchURL('https://www.sumpoorn.in/tou');
          },
          child: const Text(
            'Sumpoorn Terms of Use',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 16,
              color: Color(0xFF5C5C5C),
              fontWeight: FontWeight.w400,
              fontFamily: "Inter",
            ),
          ),
        )
      ],
    );
  }

  Widget _mobileFooter() {
    return Column(
      children: [
        const Text(
          'Copyright © 2026 Jocata. All rights reserved.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF5C5C5C),
            fontWeight: FontWeight.w500,
            fontFamily: "Inter",
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                await launchURL("https://www.linkedin.com/company/jocata/");
              },
              child: const FaIcon(
                FontAwesomeIcons.linkedin,
                size: 20,
                color: Color(0xFF5C5C5C),
              ),
            ),
            const SizedBox(width: 10),
            InkWell(
              onTap: () async {
                await launchURL("https://www.jocata.com/");
              },
              child: const Icon(
                Icons.language,
                size: 20,
                color: Color(0xFF5C5C5C),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () async {
            await launchURL('https://www.sumpoorn.in/tou');
          },
          child: const Text(
            'Sumpoorn Terms of Use',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 18,
              color: Color(0xFF5C5C5C),
              fontWeight: FontWeight.w500,
              fontFamily: "Inter",
            ),
          ),
        )
      ],
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

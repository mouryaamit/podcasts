// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class Header extends StatefulWidget {
  const Header({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = 3;
  }

  Widget _buildLogo() {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Image.network(
        'https://storage.googleapis.com/flutterflow-enterprise-india.appspot.com/projects/harshitha-layouts-9zffxj/assets/teod0zlpx7g6/logo.png',
        width: 248,
        height: 65,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return const Text(
            'Image failed to load',
            style: TextStyle(color: Colors.red),
          );
        },
      ),
    );
  }

  Widget _buildTopBar() {
    return Container(
      width: double.infinity,
      height: 50,
      color: const Color(0xFFce14181b),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _topBarText(
            'Newsroom',
            'https://www.sumpoorn.in/newsroom',
          ),
          const SizedBox(width: 28),
          _topBarText(
            'Contact',
            'https://www.sumpoorn.in/contact',
          ),
          const SizedBox(width: 28),
          _loginButton(),
          const SizedBox(width: 62),
        ],
      ),
    );
  }

  Widget _topBarText(String text, String url) {
    return InkWell(
      onTap: () async {
        await launchURL(url);
      },
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget _loginButton() {
    return ElevatedButton.icon(
      onPressed: () async {
        await launchURL(
          'https://www.sumpoorn.in/institution',
        );
      },
      icon: const Icon(
        Icons.person_2_sharp,
        size: 16,
        color: Colors.black,
      ),
      label: const Text(
        'Institution Login',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildTopBar(),
        Container(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildLogo(),
              Container(
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TabItems(
                      text: 'Home',
                      isSelected: selectedIndex == 1,
                      onTap: () async {
                        await launchURL("https://www.sumpoorn.in/home");
                      },
                    ),
                    const SizedBox(width: 20),
                    TabItems(
                      text: 'Index',
                      isSelected: selectedIndex == 2,
                      onTap: () async {
                        await launchURL("https://www.sumpoorn.in/index");
                      },
                    ),
                    const SizedBox(width: 20),
                    TabItems(
                      text: 'Resources',
                      isSelected: selectedIndex == 3,
                      onTap: () async {
                        //await launchURL("https://www.sumpoorn.in/methodology");
                      },
                    ),
                    const SizedBox(width: 20),
                    TabItems(
                      text: 'Methodology',
                      isSelected: selectedIndex == 4,
                      onTap: () async {
                        await launchURL("https://www.sumpoorn.in/methodology");
                      },
                    ),
                    const SizedBox(width: 20),
                    TabItems(
                      text: 'Roadmap',
                      isSelected: selectedIndex == 5,
                      onTap: () async {
                        await launchURL("https://www.sumpoorn.in/roadmap");
                      },
                    ),
                    const SizedBox(width: 20),
                    TabItems(
                      text: 'Partners',
                      isSelected: selectedIndex == 6,
                      onTap: () async {
                        await launchURL("https://www.sumpoorn.in/partners");
                      },
                    ),
                    const SizedBox(width: 20),
                    TabItems(
                      text: 'About',
                      isSelected: selectedIndex == 7,
                      onTap: () async {
                        await launchURL("https://www.sumpoorn.in/about");
                      },
                    ),
                    const SizedBox(width: 72),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

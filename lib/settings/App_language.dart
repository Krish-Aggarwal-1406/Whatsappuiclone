import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappui/widgets/grey_text.dart';
import 'package:whatsappui/widgets/white_text.dart';

class Language {
  final String actualLanguage;
  final String inEnglish;

  Language({required this.actualLanguage, required this.inEnglish});
}

class AppLanguage extends StatefulWidget {
  @override
  AppLanguageState createState() => AppLanguageState();
}

class AppLanguageState extends State<AppLanguage> {
  String? currentLanguage = 'English'; // Can initialize with a default language

  final List<Language> availableLanguages = [
    Language(actualLanguage: 'English', inEnglish: 'English'),
    Language(actualLanguage: 'हिन्दी', inEnglish: 'Hindi'),
    Language(actualLanguage: 'Español', inEnglish: 'Spanish'),
    Language(actualLanguage: 'Français', inEnglish: 'French'),
    Language(actualLanguage: 'Deutsch', inEnglish: 'German'),
    Language(actualLanguage: '中文', inEnglish: 'Chinese'),
    Language(actualLanguage: '日本語', inEnglish: 'Japanese'),
    Language(actualLanguage: '한국어', inEnglish: 'Korean'),
    Language(actualLanguage: 'Português', inEnglish: 'Portuguese'),
    Language(actualLanguage: 'Русский', inEnglish: 'Russian'),
    Language(actualLanguage: 'العربية', inEnglish: 'Arabic'),
    Language(actualLanguage: 'Italiano', inEnglish: 'Italian'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WhiteText(text: 'App Language',fontSize:20,),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WhiteText(
              text: 'Choose your language:',
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: availableLanguages.length,
                itemBuilder: (context, index) {
                  return RadioListTile<String>(
                    activeColor: Colors.green,
                    title: WhiteText(
                        text: availableLanguages[index].actualLanguage),
                    subtitle: GreyText(text: availableLanguages[index].inEnglish),
                    value: availableLanguages[index].inEnglish,
                    groupValue: currentLanguage,
                    onChanged: (String? selectedLang) {
                      setState(() {
                        currentLanguage = selectedLang;
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

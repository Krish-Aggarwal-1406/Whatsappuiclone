import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:whatsappui/settings/account/add_account.dart';
import 'package:whatsappui/settings/account/change_number.dart';
import 'package:whatsappui/settings/account/delete_account.dart';
import 'package:whatsappui/settings/account/email_address.dart';
import 'package:whatsappui/settings/account/passkeys.dart';
import 'package:whatsappui/settings/account/request_account_info.dart';
import 'package:whatsappui/settings/account/security_notifications.dart';
import 'package:whatsappui/settings/account/two_step_veriification.dart';
class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<data> currdata = [
      data(settings: 'Security notifications', icons: FaIcon(FontAwesomeIcons.shieldHalved)),
      data(settings: 'Passkeys', icons: FaIcon(FontAwesomeIcons.key)),
      data(settings: 'Email address', icons: FaIcon(FontAwesomeIcons.envelope)),
      data(settings: 'Two step verification', icons: FaIcon(FontAwesomeIcons.check)),
      data(settings: 'Change number', icons: FaIcon(FontAwesomeIcons.mobile)),
      data(settings: 'Request account info', icons: FaIcon(FontAwesomeIcons.file)),
      data(settings: 'Add account', icons: FaIcon(FontAwesomeIcons.userPlus)),
      data(settings: 'Delete account', icons: FaIcon(FontAwesomeIcons.trash)),
    ];

    int startindex = 11;

    return Scaffold(
      backgroundColor: Color(0xFF0B141B),
      appBar: AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(
          'Account',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 28,
            color: Colors.white,
          ),
          textAlign: TextAlign.left,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search), color: Colors.white),
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemCount: currdata.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                bool applypadding = index == 9 || index == 10;
                return Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ListTile(
                    title: Padding(
                      padding: applypadding ? EdgeInsets.only(top: 17) : EdgeInsets.zero,
                      child: Text(
                        currdata[index].settings,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    leading: FaIcon(
                      currdata[index].icons.icon,
                      color: Colors.grey,
                      size: 20,
                    ),
                    onTap: () {
                      switch (currdata[index].settings) {
                        case 'Security notifications':Get.to(SecurityNotifications());
                          break;
                        case 'Passkeys':Get.to(PasskeysPage());
                          break;
                        case 'Email address':Get.to(EmailAddressPage());
                          break;
                        case 'Two step verification':Get.to(TwoStepVerificationPage());
                          break;
                        case 'Change number':Get.to(ChangeNumberPage());
                          break;
                        case 'Request account info':Get.to(RequestAccountInfo());
                          break;
                        case 'Add account':showModalBottomSheet(isScrollControlled: true,
                            context: context, builder: (BuildContext context)=>FractionallySizedBox(
                              child: AddAccount(),
                              heightFactor: .2,
                            ));
                          break;
                        case 'Delete account':Get.to(DeleteAccount());
                          break;
                      }
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class data {
  final String settings;
  final FaIcon icons;

  data({
    required this.settings,
    required this.icons,
  });
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappui/settings/account/select_country.dart';
import 'change_number.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  String? selectedCountry;
  String? countryCode;
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var scrheight = MediaQuery.of(context).size.height;
    var scrwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'Delete this account',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0B141B),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.warning, color: Colors.red),
                SizedBox(width: 20),
                Text(
                  "If you delete this account:",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 56),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "The account will be deleted from WhatsApp and all your devices.",
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                  SizedBox(height: 5),
                  Text("Your message history will be erased.",
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                  SizedBox(height: 5),
                  Text("You will be removed from all your WhatsApp groups.",
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                  SizedBox(height: 5),
                  Text("Your Google storage backup will be deleted.",
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                  SizedBox(height: 5),
                  Text("Delete your payments info.",
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                  SizedBox(height: 5),
                  Text("Any channels you created will be deleted.",
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                  SizedBox(height: 5),
                ],
              ),
            ),
            ListTile(
              title: Text("Change number instead",
                  style: TextStyle(color: Colors.white)),
              subtitle: ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    Get.to(ChangeNumberPage());
                  },
                  child: Text(
                    "Change number",
                    style: TextStyle(color: Color(0xFF0B141B)),
                  )),
            ),
            Container(
              padding: EdgeInsets.only(left: 56),
              child: Column(
                children: [
                  Text(
                    "To delete your account, confirm your country code and enter your phone number",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    width: scrwidth * 0.8,
                    child: DropdownButton<String>(
                      dropdownColor: Color(0xFF0B141B),
                      value: selectedCountry,
                      hint: Text(
                        "Select a country",
                        style: TextStyle(color: Colors.grey),
                      ),
                      items: [
                        DropdownMenuItem(
                          value: "Select",
                          child: GestureDetector(
                            onTap: () async {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SelectCountry(),
                                ),
                              );
                              if (result != null && result is Country && mounted) {
                                setState(() {
                                  selectedCountry = result.name;
                                  countryCode = result.code;
                                });
                              }
                            },
                            child: Text(
                              selectedCountry ?? "Select a country",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                      onChanged: (_) {},
                      alignment: Alignment.centerLeft,
                      icon: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        width: scrwidth * 0.25,
                        child: TextField(
                          enabled: false,
                          controller: TextEditingController(text: countryCode),
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Code",
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Color(0xFF0B141B),
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          controller: phoneNumberController,
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.green, // Cursor color changed to green
                          decoration: InputDecoration(
                            hintText: "Phone Number",
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Color(0xFF0B141B),
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
                style:
                ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                },
                child: Text(
                  "Delete account",
                  style: TextStyle(color: Color(0xFF0B141B)),
                )),
          ],
        ),
      ),
    );
  }
}

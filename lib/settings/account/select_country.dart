import 'package:flutter/material.dart';

class SelectCountry extends StatelessWidget {
  final List<Country> countries = [
    Country(name: "United States", code: "+1"),
    Country(name: "Canada", code: "+1"),
    Country(name: "India", code: "+91"),
    Country(name: "United Kingdom", code: "+44"),
    Country(name: "Australia", code: "+61"),
    Country(name: "Germany", code: "+49"),
    Country(name: "France", code: "+33"),
    Country(name: "Japan", code: "+81"),
    Country(name: "South Korea", code: "+82"),
    Country(name: "Brazil", code: "+55"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select a Country",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0B141B),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Return null when back is pressed
            Navigator.pop(context, null);
          },
        ),
      ),
      backgroundColor: Color(0xFF0B141B),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              countries[index].name,
              style: TextStyle(color: Colors.white),
            ),
            trailing: Text(
              countries[index].code,
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            onTap: () {
              // Return selected country when tapped
              Navigator.pop(context, countries[index]);
            },
          );
        },
      ),
    );
  }
}

class Country {
  final String name;
  final String code;

  Country({required this.name, required this.code});
}

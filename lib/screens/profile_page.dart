import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:flutter_application_demo/profile_pic.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  String? _fullName;
  String? _gender;
  String? _phoneNumber;
  int? _age;
  String? _location;
  File? _profilePicture;

  final _genders = ['Male', 'Female', 'Non-binary', 'Other'];
  final List<String> _locations = [
    'Lagos, Nigeria',
    'Abuja, Nigeria',
    'America, Wichita',
    'America, New Orleans'
  ];

  final List<int> _ageList = List<int>.generate(32, (i) => i + 18);

  void _submitForm() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      // TODO: Save form data to a database or perform other actions
      // with the data.
      Navigator.pop(context);
    }
  }

  void _pickProfilePicture() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _profilePicture = File(pickedFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Let's get you started!",
          style: TextStyle(
            fontFamily: 'Work Sans',
            fontSize: 18 * ffem,
            fontWeight: FontWeight.w600,
            height: 1.7777777778 * ffem / fem,
            color: Color(0xff212121),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  // kindlysetupyouraccountwiththen (11:4361)

                  constraints: BoxConstraints(
                    maxWidth: 311 * fem,
                  ),
                  child: Text(
                    'Kindly set up your account with the next few steps. Data privacy and security is assured...',
                    style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.7142857143 * ffem / fem,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Center(
                  child: GestureDetector(
                    onTap: _pickProfilePicture,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Color(0xffd9d9d9),
                      backgroundImage: _profilePicture != null
                          ? FileImage(_profilePicture!)
                          : null,
                      child: _profilePicture == null
                          ? Icon(Icons.add_a_photo)
                          : null,
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                LabelText(
                  text: "Full Name",
                ),
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(8 * fem, 12 * fem, 8 * fem, 12 * fem),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Full Name',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(5)),
                        contentPadding: EdgeInsets.all(15)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your full name';
                      }
                      return null;
                    },
                    onSaved: (value) => _fullName = value,
                  ),
                ),

                SizedBox(height: 16.0),
                const LabelText(
                  text: "Phone Number",
                ),
                // phoneNumer

                Padding(
                  padding:
                      EdgeInsets.fromLTRB(8 * fem, 12 * fem, 8 * fem, 12 * fem),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Phone Number',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(5)),
                        contentPadding: EdgeInsets.all(15)),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                    onSaved: (value) => _phoneNumber = value,
                  ),
                ),
                SizedBox(height: 16.0),
                LabelText(
                  text: "Gender",
                ),
                // Gender section
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(8 * fem, 12 * fem, 8 * fem, 12 * fem),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                        hintText: 'Gender',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(5)),
                        contentPadding: EdgeInsets.all(15)),
                    value: _gender,
                    items: _genders.map((gender) {
                      return DropdownMenuItem<String>(
                        value: gender,
                        child: Text(gender),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _gender = value;
                      });
                    },
                    validator: (value) {
                      if (value == null) {
                        return 'Please select your gender';
                      }
                      return null;
                    },
                    onSaved: (value) => _gender = value,
                  ),
                ),
                SizedBox(height: 16.0),
                // Age
                LabelText(
                  text: "Age",
                ),
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(8 * fem, 12 * fem, 8 * fem, 12 * fem),
                  child: DropdownButtonFormField(
                    value: _age,
                    items: _ageList
                        .map((age) => DropdownMenuItem(
                              child: Text('$age'),
                              value: age,
                            ))
                        .toList(),
                    onChanged: (value) => setState(() => _age = value),
                    decoration: InputDecoration(
                        hintText: 'select age',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(5)),
                        contentPadding: EdgeInsets.all(15)),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select your age';
                      }
                      return null;
                    },
                    onSaved: (value) => _age = value,
                  ),
                ),

                SizedBox(height: 16.0),
                LabelText(
                  text: "Location",
                ),
                // Location
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(8 * fem, 12 * fem, 8 * fem, 12 * fem),
                  child: DropdownButtonFormField(
                    value: _location,
                    items: _locations
                        .map((location) => DropdownMenuItem(
                              child: Text(location),
                              value: location,
                            ))
                        .toList(),
                    onChanged: (value) => setState(() => _location = value),
                    decoration: InputDecoration(
                        hintText: 'Location',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(5)),
                        contentPadding: EdgeInsets.all(15)),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select your location';
                      }
                      return null;
                    },
                    onSaved: (value) => _location = value,
                  ),
                ),
                SizedBox(height: 16.0),

                ElevatedButton(
                  child: Text('Sign Up'),
                  onPressed: _submitForm,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LabelText extends StatelessWidget {
  const LabelText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        // labeltext
        text,
        style: TextStyle(
          fontFamily: 'Work Sans',
          fontSize: 12 * ffem,
          fontWeight: FontWeight.w400,
          height: 1.3333333333 * ffem / fem,
          color: Color(0xff333333),
        ),
      ),
    );
  }
}

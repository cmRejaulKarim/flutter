import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  final TextEditingController cell = TextEditingController();
  final TextEditingController address = TextEditingController();

  // final TextEditingController name = TextEditingController();
  // final TextEditingController name = TextEditingController();
  // final TextEditingController name = TextEditingController();
  // final TextEditingController name = TextEditingController();

  final DateTimeFieldPickerPlatform dob = DateTimeFieldPickerPlatform.material;

  String? selectedGender;
  DateTime? selectedDOB;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),

        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),

                SizedBox(height: 20.0),

                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),

                SizedBox(height: 20.0),

                TextField(
                  controller: password,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                  ),
                  obscureText: true,
                ),

                SizedBox(height: 20.0),

                TextField(
                  controller: confirmPassword,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                  obscureText: true,
                ),

                SizedBox(height: 20.0),

                TextField(
                  controller: cell,
                  decoration: InputDecoration(
                    labelText: "Cell",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.call),
                  ),
                ),

                SizedBox(height: 20.0),

                TextField(
                  controller: address,
                  decoration: InputDecoration(
                    labelText: "Address",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.maps_home_work_rounded),
                  ),
                ),
                SizedBox(height: 20.0),

                DateTimeFormField(
                  decoration: const InputDecoration(labelText: 'Date of Birth'),
                  mode: DateTimeFieldPickerMode.date,
                  pickerPlatform: dob,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

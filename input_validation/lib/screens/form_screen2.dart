import 'package:flutter/material.dart';

class FormScreen2 extends StatefulWidget {
  const FormScreen2({super.key, required String firstName, required String lastName, required String email});

  @override
  State<FormScreen2> createState() => _FormScreen2State();
}

class _FormScreen2State extends State<FormScreen2> {
  final _formKey = GlobalKey<FormState>();

  String _email = '';
  String _phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    // Retrieve arguments from Screen 1
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final String firstName = args['First Name'];
    final String lastName = args['Last Name'];
    final String city = args['City'];
    final String country = args['Country'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Display received data
              Text('First Name: $firstName', style: const TextStyle(fontSize: 18)),
              Text('Last Name: $lastName', style: const TextStyle(fontSize: 18)),
              Text('City: $city', style: const TextStyle(fontSize: 18)),
              Text('Country: $country', style: const TextStyle(fontSize: 18)),

              const SizedBox(height: 16),

              // Email Field
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                      .hasMatch(value)) {
                    return 'Invalid email format';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),

              // Phone Number Field
              TextFormField(
                decoration: const InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                    return 'Phone number must be exactly 10 digits';
                  }
                  return null;
                },
                onSaved: (value) {
                  _phoneNumber = value!;
                },
              ),

              const SizedBox(height: 20),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    print("First Name: $firstName, Last Name: $lastName, City: $city, Country: $country, Email: $_email, Phone: $_phoneNumber");

                    // Show a success message
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Success"),
                          content: const Text("Information saved successfully"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              }, 
                              child: const Text("OK")
                            )
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text('Submit'),
              ),

              const SizedBox(height: 10),

              // Back Button
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Go back to FormScreen1
                },
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

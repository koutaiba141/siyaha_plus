// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // For picking images
import 'dart:io'; // For working with file system

class CompanyUserProfilePage extends StatefulWidget {
  const CompanyUserProfilePage({super.key});

  @override
  _CompanyUserProfilePageState createState() => _CompanyUserProfilePageState();
}

class _CompanyUserProfilePageState extends State<CompanyUserProfilePage> {
  final _formKey = GlobalKey<FormState>();
  bool _isFavorite = false; // State variable to track favorite status
  final TextEditingController _companyNameController =
      TextEditingController(text: "Company ABC");
  final TextEditingController _companyAddressController =
      TextEditingController(text: "123 Main St, City");
  final TextEditingController _ownerNameController =
      TextEditingController(text: "John Doe");
  final TextEditingController _contactNumberController =
      TextEditingController(text: "+123456789");
  final TextEditingController _companyDescriptionController =
      TextEditingController(text: "Hi we are a travel company");
  final TextEditingController _facebookLinkController =
      TextEditingController(text: "Paste link here");
  final TextEditingController _instagramLinkController =
      TextEditingController(text: "Paste link here");
  final TextEditingController _tiktokLinkController =
      TextEditingController(text: "Paste link here");

  File? _logoFile; // To store the selected logo

  final ImagePicker _picker = ImagePicker(); // Image picker instance

  // Function to simulate saving updated profile data
  void _saveProfile() {
    if (_formKey.currentState!.validate()) {
      // In a real-world application, you would send the updated profile data to the backend here.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profile updated successfully')),
      );
    }
  }

  // Function to pick a logo from gallery
  Future<void> _pickLogo() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _logoFile = File(pickedFile.path); // Set the selected logo
      });
    }
  }

  // Function to remove the logo
  void _removeLogo() {
    setState(() {
      _logoFile = null; // Remove the logo
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Profile'),
        backgroundColor: Colors.lightBlue[400],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Company Logo Section
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: _logoFile != null
                          ? FileImage(_logoFile!) // Display selected logo
                          : const AssetImage('assets/logo_placeholder.png')
                              as ImageProvider, // Display placeholder logo if none
                      backgroundColor: Colors.grey[200],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: _pickLogo,
                          child: const Text(
                            'Change Logo',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        if (_logoFile != null)
                          TextButton(
                            onPressed: _removeLogo,
                            child: const Text(
                              'Remove Logo',
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Profile Fields
              _buildProfileField(
                label: 'Company Name',
                controller: _companyNameController,
                isEnabled: false,
                icon: Icons.business,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a company name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              _buildProfileField(
                label: 'Address',
                controller: _companyAddressController,
                isEnabled: false,
                icon: Icons.location_on,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              _buildProfileField(
                label: 'Owner Name',
                controller: _ownerNameController,
                isEnabled: false,
                icon: Icons.person,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an owner name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              _buildProfileField(
                label: 'Contact Number',
                controller: _contactNumberController,
                isEnabled: false,
                icon: Icons.phone,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a contact number';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),
              _buildProfileField(
                label: 'Company description',
                controller: _companyDescriptionController,
                isEnabled: false,
                icon: Icons.description,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),
              _buildProfileField(
                label: 'Facebook link',
                controller: _facebookLinkController,
                isEnabled: false,
                icon: Icons.link,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a link';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),
              _buildProfileField(
                label: 'Instagram link',
                controller: _instagramLinkController,
                isEnabled: false,
                icon: Icons.link,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a link';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),
              _buildProfileField(
                label: 'Tiktok link',
                controller: _tiktokLinkController,
                isEnabled: false,
                icon: Icons.link,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a link';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 32),

              Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                          decoration: InputDecoration(
                        labelText: 'what is your feedback?',
                        labelStyle: const TextStyle(fontSize: 16),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: IconButton(
                            icon: const Icon(Icons.send, color: Colors.blue),
                            onPressed: () {},
                          ),
                        ),
                      )),
                    ),
                    IconButton(
                      icon: Icon(
                        _isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: _isFavorite ? Colors.red : Colors.grey,
                        size: 30,
                      ),
                      onPressed: () {
                        setState(() {
                          _isFavorite = !_isFavorite;
                        });
                      },
                    ),
                  ])
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build form fields with icons
  Widget _buildProfileField({
    required String label,
    required TextEditingController controller,
    required IconData icon,
    bool isEnabled = false,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            filled: true,
            fillColor: Colors.grey[100],
          ),
          validator: validator,
        ),
      ],
    );
  }
}

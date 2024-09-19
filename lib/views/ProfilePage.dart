import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:siyaha_plus_mobile/Controllers/ThemeController.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _profilePhotoUrl = 'assets/images/profile.png'; // Default profile photo asset
  String _name = 'John Doe';
  String _phone = '+1234567890';
  String _email = 'johndoe@example.com';
  String _country = 'USA'; // Default country

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _nameController.text = _name;
    _phoneController.text = _phone;
    _emailController.text = _email;
  }

  Future<void> _pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        setState(() {
          _profilePhotoUrl = image.path;
        });
      }
    } catch (e) {
      print('Error picking image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to pick image')),
      );
    }
  }

  void _saveChanges() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _name = _nameController.text;
        _phone = _phoneController.text;
        _email = _emailController.text;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profile updated successfully!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
        actions: [
          IconButton(
            icon: Icon(themeController.isDarkMode.value ? Icons.light_mode : Icons.dark_mode),
            onPressed: () {
              themeController.toggleTheme();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: _profilePhotoUrl.startsWith('http')
                          ? NetworkImage(_profilePhotoUrl)
                          : FileImage(File(_profilePhotoUrl)) as ImageProvider,
                      backgroundColor: Colors.grey[200],
                    ),
                    Positioned(
                      bottom: -10,
                      right: -10,
                      child: GestureDetector(
                        onTap: _pickImage,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: themeController.isDarkMode.value ? Colors.blueGrey : Colors.blue,
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32.0),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        prefixIcon: Icon(Icons.person, color: Colors.blue),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        prefixIcon: Icon(Icons.phone, color: Colors.blue),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email, color: Colors.blue),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      enabled: false,
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      initialValue: _country,
                      decoration: InputDecoration(
                        labelText: 'Country',
                        prefixIcon: Icon(Icons.location_on, color: Colors.blue),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      enabled: false,
                    ),
                    const SizedBox(height: 24.0),
                    ElevatedButton(
                      onPressed: _saveChanges,
                      child: const Text('Save Changes'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: themeController.isDarkMode.value ? Colors.blueGrey : Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32.0),
              Text(
                'More Options',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.blue),
                title: Text('Settings'),
                onTap: () {
                  // Navigate to Settings page
                  Navigator.pushNamed(context, '/settings');
                },
              ),
              ListTile(
                leading: Icon(Icons.help, color: Colors.blue),
                title: Text('Help & Support'),
                onTap: () {
                  // Navigate to Help & Support page
                  Navigator.pushNamed(context, '/help');
                },
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.blue),
                title: Text('Logout'),
                onTap: () {
                  // Handle logout action
                  // For example, you can clear user data and navigate to login
                  Get.offAllNamed('/login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
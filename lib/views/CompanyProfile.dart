import 'package:flutter/material.dart';

class CompanyProfilePage extends StatefulWidget {
  const CompanyProfilePage({super.key});

  @override
  _CompanyProfilePageState createState() => _CompanyProfilePageState();
}

class _CompanyProfilePageState extends State<CompanyProfilePage> {
  // Example profile data (would normally be fetched from a backend)
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _companyNameController =
      TextEditingController(text: "Company ABC");
  final TextEditingController _companyAddressController =
      TextEditingController(text: "123 Main St, City");
  final TextEditingController _ownerNameController =
      TextEditingController(text: "John Doe");
  final TextEditingController _contactNumberController =
      TextEditingController(text: "+123456789");

  // Function to simulate saving updated profile data
  void _saveProfile() {
    if (_formKey.currentState!.validate()) {
      // In a real-world application, you would send the updated profile data to the backend here.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profile updated successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfileField(
                label: 'Company Name',
                controller: _companyNameController,
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
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Please enter a contact number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32),
              Center(
                child: ElevatedButton(
                  onPressed: _saveProfile,
                  child: const Text('Save Profile'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build form fields
  Widget _buildProfileField({
    required String label,
    required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: label,
          ),
          validator: validator,
        ),
      ],
    );
  }
}
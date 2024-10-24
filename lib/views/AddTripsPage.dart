import 'package:flutter/material.dart';

class AddTripsPage extends StatefulWidget {
  const AddTripsPage({Key? key}) : super(key: key);

  @override
  State<AddTripsPage> createState() => _AddTripsPageState();
}

class _AddTripsPageState extends State<AddTripsPage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for form fields
  final TextEditingController _tripNameController = TextEditingController();
  final TextEditingController _destinationController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  @override
  void dispose() {
    _tripNameController.dispose();
    _destinationController.dispose();
    _dateController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  // Function to handle form submission
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Code to submit the trip details to the backend or database goes here
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Trip successfully added')),
      );

      // Clear the fields after submission
      setState(() {
        _tripNameController.clear();
        _destinationController.clear();
        _dateController.clear();
        _priceController.clear();
      });
    }
  }

  // Function to clear form
  void _clearForm() {
    setState(() {
      _tripNameController.clear();
      _destinationController.clear();
      _dateController.clear();
      _priceController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Trip'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _buildTextField(
                controller: _tripNameController,
                labelText: 'Trip Name',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a trip name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              _buildTextField(
                controller: _destinationController,
                labelText: 'Destination',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a destination';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              _buildDateField(
                controller: _dateController,
                labelText: 'Date',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a date';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              _buildTextField(
                controller: _priceController,
                labelText: 'Price',
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a price';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid price';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32.0),

              // Submit button
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Submit Trip'),
              ),
              const SizedBox(height: 16.0),

              // Clear button
              OutlinedButton(
                onPressed: _clearForm,
                child: const Text('Clear Form'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable TextFormField widget
  TextFormField _buildTextField({
    required TextEditingController controller,
    required String labelText,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
      validator: validator,
      keyboardType: keyboardType,
    );
  }

  // Reusable TextFormField widget for date field
  TextFormField _buildDateField({
    required TextEditingController controller,
    required String labelText,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
      validator: validator,
      onTap: () async {
        FocusScope.of(context).requestFocus(FocusNode());
        final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2101),
        );
        if (pickedDate != null) {
          setState(() {
            controller.text = '${pickedDate.month}/${pickedDate.day}/${pickedDate.year}';
          });
        }
      },
    );
  }
}

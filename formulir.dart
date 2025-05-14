import 'package:flutter/material.dart';

class FormulirWidget extends StatelessWidget {
  const FormulirWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nama',
                hintText: 'Masukkan nama lengkap',
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.check),
                border : OutlineInputBorder(),
                filled: true,
                fillColor: Colors.grey[200],
                errorText: 'Nama harus diisi',
                helperText: 'Gunakan  nama sesuai KTP',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nama tidak boleh kosong';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email tidak boleh kosong';
                } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)){
                  return 'Format email tidak valid';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              controller: _passwordController,
              obscureText: true,
              validator: (value) {
                if (value == null || value.length < 6) {
                  return 'Password minimal 6 karakter';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed:() {
                if (_formkey.currentState!.validate()) {
                  print('Nama:${_nameController.text}');
                  print("Email: ${_emailController.text}");
                  print("Password: ${_passwordController.text}");
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

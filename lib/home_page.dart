import 'package:flutter/material.dart';
import 'package:test_project/custom_textfield.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom TextField"),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextField(
              controller: nameController,
              name: "Name",
              prefixIcon: Icons.person_outline,
              inputType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
            ),
            CustomTextField(
              controller: emailController,
              name: "Email",
              prefixIcon: Icons.email_outlined,
              inputType: TextInputType.emailAddress,
            ),
            CustomTextField(
              controller: passController,
              name: "Password",
              prefixIcon: Icons.lock_outline,
              inputType: TextInputType.text,
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool get isBig => MediaQuery.sizeOf(context).width >= 1070;

  final List<Color> _backgroundColors = [
    const Color.fromARGB(255, 119, 44, 44),
    Colors.orange,
    Colors.orange,
    const Color.fromARGB(255, 119, 65, 44),
  ];

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _smallScreen();
  }

  Widget _smallScreen() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: _backgroundColors,
          ),
        ),
        child: Form(
          key: _formKey,
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 50),
                    constraints: const BoxConstraints(
                      maxWidth: 500,
                      minWidth: 400,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 40),
                          TextField(
                            decoration: InputDecoration(label: Text("email")),
                            controller: _emailController,
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            decoration: InputDecoration(label: Text("Senha")),
                            controller: _passwordController,
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            decoration: InputDecoration(
                                label: Text("confirma sua senha")),
                            controller: _confirmPasswordController,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: TextButton(
                              child: Text("confirma sua senha"),
                              onPressed: () {},
                            ),
                          ),
                          ElevatedButton(
                            onPressed: _onPressedRegister,
                            child: Text("confirma sua senha"),
                          ),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(Images.logo),
                      Text(
                        "dsad",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onPressedRegister() {
    if (_formKey.currentState!.validate()) {}
  }
}

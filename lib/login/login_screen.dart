import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool get isBig => MediaQuery.sizeOf(context).width >= 1070;

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  final List<Color> _backgroundColors = [
    const Color.fromARGB(255, 119, 44, 44),
    Colors.orange,
    Colors.orange,
    const Color.fromARGB(255, 119, 65, 44),
  ];

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
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 40),
                          TextField(
                            controller: _emailController,
                             decoration: InputDecoration(label: Text("email")),
                          const SizedBox(height: 30),
                          TextField(
                            controller: _passwordController,
                          decoration: InputDecoration(label: Text("senha")),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: TextButton(
                              onPressed: () {},
                              Text "Strings.forgotPassword",
                            ),
                          ),
                          ElevatedButton(
                            onPressed: _onPressedLogin,
                            text: Strings.login,
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
                      Text("dsadas")
                      
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

  void _onPressedLogin() {
    if (_formKey.currentState!.validate()) {
    
    }
  }
}

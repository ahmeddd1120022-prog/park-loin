import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldWithContainerSignUp extends StatefulWidget {
  const CustomTextFormFieldWithContainerSignUp({super.key});

  @override
  State<CustomTextFormFieldWithContainerSignUp> createState() =>
      _CustomTextFormFieldWithContainerSignUpState();
}

class _CustomTextFormFieldWithContainerSignUpState
    extends State<CustomTextFormFieldWithContainerSignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;
  String? Emall;
  String? Password;
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          TextFormField(
            onSaved: (data) {
              Emall = data;
            },
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            validator: (data) {
              if (data!.isEmpty) {
                return "filed is Required";
              }
            },
            decoration: InputDecoration(
              hintText: "Enter your email",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: 10),

          Row(
            children: const [
              Text(
                "Password",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          TextFormField(
            onSaved: (data) {
              Password = data;
            },
            validator: (data) {
              if (data!.isEmpty) {
                return "filed is Required";
              }
            },
            controller: _passwordController,
            obscureText: isPasswordHidden,

            decoration: InputDecoration(
              hintText: "***********",
              filled: true,
              fillColor: Colors.white,
              prefixIcon: const Icon(Icons.lock_outlined),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isPasswordHidden = !isPasswordHidden;
                  });
                },
                icon: Icon(
                  isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: 10),

          Row(
            children: const [
              Text(
                "Confirm your password",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          TextFormField(
            validator: (data) {
              if (data!.isEmpty) {
                return "filed is Required";
              }
            },
            controller: _confirmPasswordController,
            obscureText: isConfirmPasswordHidden,

            decoration: InputDecoration(
              hintText: "***********",
              filled: true,
              fillColor: Colors.white,
              prefixIcon: const Icon(Icons.lock_outlined),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isConfirmPasswordHidden = !isConfirmPasswordHidden;
                  });
                },
                icon: Icon(
                  isConfirmPasswordHidden
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: 20),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff4b3278),
              minimumSize: const Size(370, 60),
            ),
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                try {
                  await registerUser();
                } on FirebaseAuthException catch (ex) {
                  if (ex.code == 'weak-password') {
                    showSnackBar(context, "Weak password");
                  } else if (ex.code == 'email-already-in-use') {
                    showSnackBar(context, "Emall already in user");
                  }
                } catch (ex) {
                  showSnackBar(context, "Error");
                }
                showSnackBar(context, "Success");
              } else {
                showSnackBar(context, "");
              }
            },
            child: const Text(
              "Sign up",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }

  void showSnackBar(BuildContext context, String massage) {
    {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(massage)));
    }
  }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: Emall!, password: Password!);
  }
}

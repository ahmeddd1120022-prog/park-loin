import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:park_lion/core/shared/widgets/custom_text_form_field.dart';
import 'package:park_lion/core/utils/validators/validation_app.dart';
import 'package:park_lion/features/auth/Forget%20password/presentation/views/forget_Password_view.dart';
import 'package:park_lion/features/auth/login/presentation/logic/change_icon_login/change_icon_login_cubit.dart';

class CustomTextFormFieldWithContainerLogin extends StatefulWidget {
  const CustomTextFormFieldWithContainerLogin({super.key});

  @override
  State<CustomTextFormFieldWithContainerLogin> createState() =>
      _CustomTextFormFieldWithContainerLoginState();
}

class _CustomTextFormFieldWithContainerLoginState
    extends State<CustomTextFormFieldWithContainerLogin> {
  bool isHidden = true;
  bool isRemember = true;
  GlobalKey<FormState> formstate = GlobalKey();
  String? emall;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formstate,
      child: Column(
        children: [
          Row(
            children: [
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
          CustomTextFormField(
            textInputType: TextInputType.emailAddress,
            validator: (value) => ValidationApp.email(value),
            hintTex: 'Enter your email',
          ),
          const SizedBox(height: 10),
          Row(
            children: [
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
          BlocBuilder<ChangeIconLoginCubit, bool>(
            builder: (context, state) {
              return CustomTextFormField(
                obscureText: state,
                validator: (value) => ValidationApp.password(value),
                hintTex: '********',
                prefixicon: Icon(Icons.lock_outlined),
                suffixicon: IconButton(
                  onPressed: () {
                    context.read<ChangeIconLoginCubit>().togglePasswordIcon();
                  },
                  icon: state
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                ),
              );
            },
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isRemember,
                    activeColor: Color(0xff5e3b8d),
                    onChanged: (value) {
                      setState(() {
                        isRemember = value!;
                      });
                    },
                  ),
                  Text(
                    "Remember me",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ],
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Forgetpassword()),
                  );
                },
                child: Text(
                  "Forget Password",
                  style: TextStyle(
                    color: Color(0xff65558F),
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff4b3278),
              minimumSize: Size(370, 60),
            ),
            onPressed: () {
              if (formstate.currentState!.validate()) {}
            },
            child: Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}

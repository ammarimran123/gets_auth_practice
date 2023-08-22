import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/primary_button.dart';
import '../../widgets/primary_textfield.dart';
import 'signup_controller.dart';


class SignupView extends GetView<SignUpController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 0,
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/pin-logo.jpg',
                  height: 40,
                  width: 40,
                  //width: double.infinity,
                  // height: 500,
                  // fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 15,
                ),
                const Text(
                  'Welcome to HUB Recruitment Services\n Tell us about yourself?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF535a75),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Form(
                  key: controller.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          // color: Color(0xFF3e445c),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      PrimaryTextField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your Email ID';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        hintText: 'Email',
                        controller: controller.emailController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          // color: Color(0xFF3e445c),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      PrimaryTextField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your Password';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        hintText: 'Password',
                        controller: controller.passwordController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Mobile Number',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          // color: Color(0xFF3e445c),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      PrimaryTextField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your Mobile Number';
                          }
                          return null;
                        },
                        hintText: 'Mobile Number',
                        controller: controller.mobileNoController,
                      ),
                      // const SizedBox(
                      //   height: 10,
                      // ),

                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Transform.translate(
                      offset: const Offset(-15, 0),
                      child: Checkbox(
                        activeColor: const Color(0xFFFA0F4C),
                        value: controller.isSelected(),
                        onChanged: (val) {
                          controller.setSelected(val!);
                          //setState(() {});
                        },
                      ),
                    ),
                    Expanded(
                      child: Transform.translate(
                        offset: const Offset(-20, 0),
                        child: const Text(
                          'I accept the terms of use and privacy policy.',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF535a75),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: PrimaryButton(
                    title: 'CONTINUE',
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: ((context) => const LandingView()),
                      //   ),
                      // );
                    },
                  ),
                ),
                const Text(
                  'OR',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF535a75),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: PrimaryButton(
                    title: 'Continue with Facebook',
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: ((context) => const LandingView()),
                      //   ),
                      // );
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: PrimaryButton(
                    title: 'Continue with Google',
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: ((context) => const LandingView()),
                      //   ),
                      // );
                    },
                  ),
                ),



              ],
            ),
          ),
        ));
  }
}

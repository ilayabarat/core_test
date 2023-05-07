import 'package:core_test/screens/secondscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Firstscr extends StatefulWidget {
  const Firstscr({super.key});

  @override
  State<Firstscr> createState() => _FirstscrState();
}

class _FirstscrState extends State<Firstscr> {
  final _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          key: _form,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 150,
              ),
              const Center(
                child: Text(
                  "Let's get started",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                'Enter your mobile number',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                ],
                autofocus: false,
                cursorColor: const Color.fromARGB(255, 245, 242, 242),
                validator: (value) {
                  String pattern = r'(^[6789][0-9]{9}$)';
                  RegExp regExp = RegExp(pattern);
                  if (value!.isEmpty) {
                    return "* Required";
                  } else if (!regExp.hasMatch(value)) {
                    return "Need a valid Mobile Number";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    hintText: 'Mobile number',
                    hintStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.transparent,
                    filled: true,
                    errorStyle: TextStyle(fontSize: 20),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xFFF3F4F8),
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          color: Color.fromARGB(255, 130, 167, 243),
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_form.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Secondscr())));
                    }
                  },
                  child: const Center(child: Text('Continue'))),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120,
                    height: 1,
                    color: Colors.grey,
                  ),
                  const Text(
                    'or continue with',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Container(
                    width: 120,
                    height: 1,
                    color: Colors.grey,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      onPressed: (() {}),
                      child: const Icon(
                        Icons.report_gmailerrorred,
                        color: Colors.white,
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      onPressed: (() {}),
                      child: const Icon(
                        Icons.apple_sharp,
                        color: Colors.white,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:prak1/bottomnav.dart';
import 'package:prak1/page1.dart';
import 'package:prak1/widget/fieldcustom.dart';
import 'package:shared_preferences/shared_preferences.dart';

class registerscreen extends StatefulWidget {
  const registerscreen({super.key});

  @override
  State<registerscreen> createState() => _registerscreenState();
}

class _registerscreenState extends State<registerscreen> {
  final formKey = GlobalKey<FormState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController nbiController = TextEditingController();
  TextEditingController praktikumController = TextEditingController();
  TextEditingController alamatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 249, 251, 1),
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/regis.png',
                scale: 6,
              ),
              textFieldCustom('Masukkan NBI', nbiController),
              textFieldCustom('Masukkan Nama', namaController),
              textFieldCustom('Kelas Praktikum', praktikumController),
              textFieldCustom('Alamat', alamatController),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                child: ElevatedButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        final SharedPreferences pref =
                            await SharedPreferences.getInstance();
                        await pref.setString('nbi', nbiController.text);
                        await pref.setString('nama', namaController.text);
                        await pref.setString('sesi', praktikumController.text);
                        await pref.setString('Alamat', alamatController.text);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (build) {
                              return page1();
                            },
                          ),
                        );
                      }
                    },
                    child: Center(
                      child: Text("Daftar"),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

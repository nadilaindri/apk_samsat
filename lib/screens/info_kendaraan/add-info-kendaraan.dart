import 'package:flutter/material.dart';
import 'package:projek_samsat/screens/info_kendaraan/kendaraan-info.dart';
import 'package:projek_samsat/services/api.services.dart';
import 'package:projek_samsat/utils/constants.dart';

class AddInfoKendaraan extends StatefulWidget {
  const AddInfoKendaraan({super.key});

  @override
  State<AddInfoKendaraan> createState() => _AddInfoKendaraanState();
}

class _AddInfoKendaraanState extends State<AddInfoKendaraan> {
  final _addInfoKendaraan = GlobalKey<FormState>();
  ApiServicesKendaraan apiServicesKendaraan = ApiServicesKendaraan();
  TextEditingController _jenisKendaraan = TextEditingController();
  TextEditingController _platNomor = TextEditingController();
  bool isLoading = false;

  String? jenisKendaraan;

  saveInfoKendaraan() async {
    await ApiServicesKendaraan().addInfoKendaraan({
      "jenisKendaraan": jenisKendaraan,
      "platNomor": _platNomor.text
    }).then((value) {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Kendaraan',
          style: TextStyle(
              color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Constants.yellowColor,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Container(
        color: Constants.WhiteColor,
        child: ListView(
          children: [
            Form(
              key: _addInfoKendaraan,
              child: Container(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    DropdownButtonFormField(
                      value: jenisKendaraan,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Constants.PrimaryColor),
                        ),
                        contentPadding: const EdgeInsets.all(15.0),
                        focusColor: Constants.PrimaryColor,
                        hintText: 'Jenis Kendaraan',
                        hintStyle:
                            TextStyle(color: Colors.grey[600], fontSize: 14.0),
                      ),
                      items: Constants.jenisKendaraan.map((item) {
                        return DropdownMenuItem(
                          child: Text(item),
                          value: item,
                        );
                      }).toList(),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null) {
                          return 'Jenis Kendaraan must be Filled!';
                        }
                        return null;
                      },
                      onChanged: (val) {
                        // FocusScope.of(context).requestFocus(FocusNode());
                        // setState(() {
                        //   jenisKendaraan = val;
                        // });
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: _platNomor,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Test Type must not be empty!';
                        } else if (value.length > 50) {
                          return ' 50 characters only';
                        }
                        return null;
                      },
                      style: const TextStyle(
                          fontSize: 14.0, height: 1.0, color: Colors.black),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        labelText: 'Masukkan plat Nomor',
                        hintText: 'Masukkan Plat Nomor',
                        labelStyle: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20.0, right: 20.0),
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Constants.yellowColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: isLoading
                              ? null
                              : () {
                                  if (_addInfoKendaraan.currentState!
                                      .validate()) {
                                    setState(() {
                                      isLoading = true;
                                    });
                                    saveInfoKendaraan();
                                  }
                                  print("object");
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) =>
                                  //         const KendaraanInfo(),
                                  //   ),
                                  // );
                                },
                          child: const Text(
                            'Save',
                            style: TextStyle(
                                fontSize: 12.5, fontWeight: FontWeight.w500),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

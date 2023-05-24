import 'package:flutter/material.dart';
import 'package:projek_samsat/model/info_kendaraan_model.dart';
import 'package:projek_samsat/services/api.services.dart';
import 'package:projek_samsat/utils/constants.dart';

class KendaraanInfo extends StatefulWidget {
  const KendaraanInfo({super.key});

  @override
  State<KendaraanInfo> createState() => _KendaraanInfoState();
}

class _KendaraanInfoState extends State<KendaraanInfo> {
  ApiServicesKendaraan apiServicesKendaraan = ApiServicesKendaraan();
  TextEditingController _jenisKendaraan = TextEditingController();
  TextEditingController _platNomor = TextEditingController();
  List<Data> infoKendaraan = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getInfo();
  }

  getInfo() async {
    // var data = {"jenisKendaraan": "SEPEDA MOTOR", "platNomor": "F111AA"};
    var data = {"jenisKendaraan": _jenisKendaraan, "platNomor": _platNomor};
    await ApiServicesKendaraan().addInfoKendaraan(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.yellowColor,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Detail Info Kendaraan',
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Container(
        color: Constants.WhiteColor,
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: infoKendaraan.length,
                itemBuilder: (context, i) => Card(
                  elevation: 6.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Informasi Kendaraan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Status Tunggakan',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  ),
                                  Text(
                                    '6 Bulan',
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Total Tagihan',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                                Text(
                                  '3.000.000',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ],
                            ))
                          ],
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Informasi Data Kendaraan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Text(
                                  //   'Nomor BPKB',
                                  //   style: TextStyle(
                                  //       fontWeight: FontWeight.bold,
                                  //       fontSize: 15.0),
                                  // ),
                                  // Text(
                                  //   infoKendaraan[i].noBpkb == null
                                  //       ? '-'
                                  //       : infoKendaraan[i].noBpkb,
                                  //   style: TextStyle(fontSize: 13.0),
                                  // ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Nomor Urut Daftar',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                                Text(
                                  '119',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ],
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'NIK',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  ),
                                  Text(
                                    '32762398493493',
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Samsat Asal',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                                Text(
                                  'Cibinong',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ],
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Samsat Tujuan',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  ),
                                  Text(
                                    'Cibinong',
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Jenis',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                                Text(
                                  'SEPEDA MOTOR',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ],
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Nomor Polisi',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  ),
                                  Text(
                                    'F3886AAK',
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Nomor Rangka',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                                Text(
                                  'HH3FZ457HK090064',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ],
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Nomor Mesin',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  ),
                                  Text(
                                    'HHF1R1080567',
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Tahun Buat',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                                Text(
                                  '2023',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ],
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Merk',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  ),
                                  Text(
                                    'HONDA',
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Model',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                                Text(
                                  'SOLO',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ],
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Tipe',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  ),
                                  Text(
                                    'D1C01M27K2 A/T',
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Warna',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                                Text(
                                  'BLACK',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ],
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Jumlah Roda',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Kode Lokasi',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                                Text(
                                  '706',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ],
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Masa Berlaku STNK',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  ),
                                  Text(
                                    '2023-10-19',
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Tanggal Buat',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                                Text(
                                  '2023-10-19',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ],
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          'Tarif',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                        ),
                        const Text(
                          '10.000.000',
                          style: TextStyle(fontSize: 13.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InfoKendaraan {
  String? status;
  String? message;
  List<Data>? data;
  List<StatusTunggakan>? statusTunggakan;

  InfoKendaraan(
      {required this.status,
      required this.message,
      required this.data,
      required this.statusTunggakan});

  InfoKendaraan.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    if (json['status_tunggakan'] != null) {
      statusTunggakan = <StatusTunggakan>[];
      json['status_tunggakan'].forEach((v) {
        statusTunggakan!.add(StatusTunggakan.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (statusTunggakan != null) {
      data['status_tunggakan'] =
          statusTunggakan!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? idStnk;
  String? noStnk;
  String? noBpkb;
  String? noUrutDaftar;
  String? nik;
  String? samsatAsal;
  String? samsatTujuan;
  String? jenis;
  String? noPolisi;
  String? noRangka;
  String? noMesin;
  String? tahunBuat;
  String? merk;
  String? model;
  String? tipe;
  String? warna;
  String? jumlahRoda;
  String? kodeLokasi;
  String? masaBerlakuStnk;
  String? tglBuat;
  String? tarif;

  Data(
      {this.idStnk,
      this.noStnk,
      this.noBpkb,
      this.noUrutDaftar,
      this.nik,
      this.samsatAsal,
      this.samsatTujuan,
      this.jenis,
      this.noPolisi,
      this.noRangka,
      this.noMesin,
      this.tahunBuat,
      this.merk,
      this.model,
      this.tipe,
      this.warna,
      this.jumlahRoda,
      this.kodeLokasi,
      this.masaBerlakuStnk,
      this.tglBuat,
      this.tarif});

  Data.fromJson(Map<String, dynamic> json) {
    idStnk = json['id_stnk'];
    noStnk = json['no_stnk'];
    noBpkb = json['no_bpkb'];
    noUrutDaftar = json['no_urut_daftar'];
    nik = json['nik'];
    samsatAsal = json['samsat_asal'];
    samsatTujuan = json['samsat_tujuan'];
    jenis = json['jenis'];
    noPolisi = json['no_polisi'];
    noRangka = json['no_rangka'];
    noMesin = json['no_mesin'];
    tahunBuat = json['tahun_buat'];
    merk = json['merk'];
    model = json['model'];
    tipe = json['tipe'];
    warna = json['warna'];
    jumlahRoda = json['jumlah_roda'];
    kodeLokasi = json['kode_lokasi'];
    masaBerlakuStnk = json['masa_berlaku_stnk'];
    tglBuat = json['tgl_buat'];
    tarif = json['tarif'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id_stnk'] = idStnk;
    data['no_stnk'] = noStnk;
    data['no_bpkb'] = noBpkb;
    data['no_urut_daftar'] = noUrutDaftar;
    data['nik'] = nik;
    data['samsat_asal'] = samsatAsal;
    data['samsat_tujuan'] = samsatTujuan;
    data['jenis'] = jenis;
    data['no_polisi'] = noPolisi;
    data['no_rangka'] = noRangka;
    data['no_mesin'] = noMesin;
    data['tahun_buat'] = tahunBuat;
    data['merk'] = merk;
    data['model'] = model;
    data['tipe'] = tipe;
    data['warna'] = warna;
    data['jumlah_roda'] = jumlahRoda;
    data['kode_lokasi'] = kodeLokasi;
    data['masa_berlaku_stnk'] = masaBerlakuStnk;
    data['tgl_buat'] = tglBuat;
    data['tarif'] = tarif;
    return data;
  }
}

class StatusTunggakan {
  String? statusTunggakan;
  int? totalTagihan;

  StatusTunggakan({this.statusTunggakan, this.totalTagihan});

  StatusTunggakan.fromJson(Map<String, dynamic> json) {
    statusTunggakan = json['status_tunggakan'];
    totalTagihan = json['total_tagihan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status_tunggakan'] = statusTunggakan;
    data['total_tagihan'] = totalTagihan;
    return data;
  }
}

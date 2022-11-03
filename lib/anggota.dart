import 'package:flutter/material.dart';
import 'package:tugas/home.dart';

class daftarAnggota extends StatelessWidget {
  const daftarAnggota({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Kelompok 11'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _Kiki(),
                _Duana(),
                _Nadine()
              ]),
        ));
  }

  Widget _Kiki() {
    return const Center(
      child: Card(
        child: SizedBox(
          width: 250,
          height: 100,
          child: Center(
            child:
            Text('Rizky Novian (124200029)'),
          ),
        ),
      ),
    );
  }

  Widget _Duana() {
    return const Center(
      child: Card(
        child: SizedBox(
          width: 250,
          height: 100,
          child: Center(
            child: Text('Duana Puspitaingrum (124200055)'),
          ),
        ),
      ),
    );
  }

  Widget _Nadine() {
    return const Center(
      child: Card(
        child: SizedBox(
          width: 250,
          height: 100,
          child: Center(
            child: Text('Geraldyne Arisstonstarlita (124200078)'),
          ),
        ),
      ),
    );
  }
}

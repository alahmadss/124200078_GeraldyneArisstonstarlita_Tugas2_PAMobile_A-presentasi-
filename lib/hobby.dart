import 'package:flutter/material.dart';
import 'home.dart';

class Hobby extends StatelessWidget {
  const Hobby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 160.0,
        child: Image.asset('assets/lucu.jpg'), //gambar
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Hobby'),
        centerTitle: true,
      ),
      body: ListView( //buat kotak kotak kebawah bisa scroll
        children: <Widget>[
        logo,
        SizedBox(height: 160.0),
        _hobbyKiki(),
        _hobbyDuana(),
        _hobbyNadine(),
        ],
      ),
    );
  }

  Widget _hobbyKiki() {
    return const Center(
      child: Card(
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(
            child: Text('Hobby Kiki: Menonton'),
          ),
        ),
      ),
    );
  }

  Widget _hobbyDuana() {
    return const Center(
      child: Card(
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(
            child: Text('Hobby Duana: Menonton'),
          ),
        ),
      ),
    );
  }

  Widget _hobbyNadine() {
    return const Center(
      child: Card(
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(
            child: Text('Hobby Nadine: Menonton'),
          ),
        ),
      ),
    );
  }
}

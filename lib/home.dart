import 'package:flutter/material.dart';
import 'package:tugas/anggota.dart';
import 'package:tugas/login.dart';
import 'package:tugas/hobby.dart';
import 'package:tugas/stopwatch.dart'; //import

class HomePage extends StatefulWidget {
  final String Username; //buat ngambil nilai username
  final String Password; //buat ngambil nilai password

  const HomePage({Key? key, required this.Username, this.Password = ""})
      : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String username = "";
  int pageIndex = 0;
  final pages = [
    const Page1(), //deklarasi halaman (home sama how to use)
    const Page2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, ${widget.Username}!'),
        centerTitle: true,
      ),
      body: pages[pageIndex],
      //buat navbar bawah
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
            ),
            label: 'How to Use',
          ),
        ],
        currentIndex: pageIndex,
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return daftarAnggota();
              }));
            },
            child: Text('Daftar Anggota'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return StopWatch();
              }));
            },
            child: Text('Stopwatch'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Hobby();
              }));
            },
            child: Text('Hobi Kami'),
          ),
          SizedBox(height: 20),
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              icon: Icon(Icons.logout, color: Colors.blue)),
        ],
      )),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child:
              Text('Cara Menggunakan Aplikasi\n'
                  '1. Login menggunakan username dan password\n'
                  '2. Klik button Daftar anggota untuk melihat anggota\n'
                  '3. Klik button stopwatch untuk menggunakan fitur stopwatch\n'
                  '4. Klik icon home pada bottom navigation bar untuk ke halaman utama\n'
                  '5. Klik button hobby untuk menuju halaman hobby\n'
                  '6. Klik icon list untuk melihat cara penggunaan aplikasi'),
            ),
          ],
        ),
      ],
    );
  }
}

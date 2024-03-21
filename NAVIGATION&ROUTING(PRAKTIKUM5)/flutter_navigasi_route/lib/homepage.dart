import 'package:flutter/material.dart';

import 'secondpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME PAGE FAJAR SETIAWAN(21102183)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(
                      data: 'Data dari Home Page',
                    ),
                  ),
                );
              },
              child: const Text('Menuju halaman kedua'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second_page',
                    arguments: 'Menggunakan route');
              },
              child: const Text('Menuju halaman kedua menggunakan route'),
            ),
          ],
        ),
      ),
    );
  }
}
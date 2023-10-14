import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Situs Web Flutter Menarik'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController questionController = TextEditingController();
  bool isMale = false; // Untuk pemilihan jenis kelamin

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.brown], // Gradasi biru dan coklat
          ),
        ),
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 5,
              color: Colors.white.withOpacity(0.8),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.favorite,
                      size: 50,
                      color: Colors.red,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Tugas Flutter Pertemuan 5',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Daniel Alexander Papilaya - 32210009',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Tindakan yang ingin Anda eksekusi saat tombol ditekan
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      ),
                      child: Text(
                        'Mulai Sekarang',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(height: 20),
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(labelText: 'Nama'),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: dobController,
                      decoration: InputDecoration(labelText: 'Tanggal Lahir'),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: questionController,
                      decoration: InputDecoration(labelText: 'Pertanyaan Anda'),
                      maxLines: 3,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Text('Jenis Kelamin: '),
                        Checkbox(
                          value: isMale,
                          onChanged: (bool? value) {
                            setState(() {
                              isMale = value!;
                            });
                          },
                        ),
                        Text('Laki-Laki'),
                         Checkbox(
                          value: isMale,
                          onChanged: (bool? value) {
                            setState(() {
                              isMale = value!;
                            });
                          },
                        ),
                        Text('Perempuan'),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Tindakan yang ingin Anda eksekusi saat tombol ditekan
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.mail,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Email: example@example.com',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.green),
                      title: Text('Telepon: (123) 456-7890'),
                    ),
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

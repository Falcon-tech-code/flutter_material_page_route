import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GirisEkrani(),
    );
  }
}

class GirisEkrani extends StatefulWidget {
  const GirisEkrani({super.key});

  @override
  State<GirisEkrani> createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const Text("Giriş Sayfasi"),
            TextFormField(
              controller: t1,
            ),
            TextFormField(
              controller: t2,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfilEkrani(
                              kullaniciAdi: t1.text,
                              sifre: t2.text,
                            )));
              },
              child: const Text("Giriş Yap"),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilEkrani extends StatefulWidget {
  final String kullaniciAdi,
      sifre; // Final değişkenler ve constructor parametreleri.
  const ProfilEkrani(
      {super.key, required this.kullaniciAdi, required this.sifre});

  @override
  State<ProfilEkrani> createState() => _ProfilEkraniState();
}

class _ProfilEkraniState extends State<ProfilEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const Text("Profil Sayfasi"),
            Text(widget.kullaniciAdi),
            Text(widget.sifre),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Çıkış Yap"))
          ],
        ),
      ),
    );
  }
}

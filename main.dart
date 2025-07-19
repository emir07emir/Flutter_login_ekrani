import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'DENEME'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi=MediaQuery.of(context);
    final double ekranGenisligi=ekranBilgisi.size.width;//final değerin değişmemesini sağlıyor.
    final double ekranYuksekligi=ekranBilgisi.size.height;


    return Scaffold(
      backgroundColor: Colors.deepPurple,
        body:Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: ekranYuksekligi/20 ),
                  child: SizedBox(
                    width: ekranGenisligi/4,
                      height: ekranYuksekligi/6,
                      child: Image.asset("resimler/logo.png")),
                ),
                Padding(
                  padding:EdgeInsets.all(ekranYuksekligi/30),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Kullanıcı Adı",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ekranYuksekligi/30),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Şifre",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ekranYuksekligi/30),
                  child: SizedBox(
                    width: ekranGenisligi/1.2,
                    height: ekranYuksekligi/12,
                    child: ElevatedButton(
                      child: Text("GİRİŞ YAP",style: TextStyle(fontSize: ekranGenisligi/25,color: Colors.white)),
                      onPressed: (){
                        print("Giriş yapıldı");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                   print("Yardım Seçildi");
                  },
                  child: Text("Yardım ?",
                    style:TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: ekranGenisligi/30,
                    )
                    ,),
                )
              ],
            ),
          ),
        )
    );
  }
}




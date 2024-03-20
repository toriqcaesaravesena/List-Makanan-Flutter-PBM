import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Food {
  final String name;
  final String image;
  final String description;
  final int rating;
  final double price;

  Food({required this.name, required this.image, required this.description, required this.rating, required this.price});
}

class MyApp extends StatelessWidget {
  
  final List<Food> foods = [
    Food(
      name: 'Nasi Goreng',
      image: '../assets/nasi_goreng.jpg',
      price: 20000,
      description: 'Nasi goreng adalah masakan nasi yang digoreng dan diaduk dalam minyak goreng atau margarin, seringkali ditambahi kecap manis, bawang merah, bawang putih, telur, dan bahan lain seperti ayam, daging sapi, kepiting, atau kerang.',
      rating: 4,
    ),
    Food(
      name: 'Sate Ayam',
      image: '../assets/sate_ayam.jpg',
      price: 25000,
      description: 'Sate ayam adalah makanan yang terdiri dari potongan daging ayam yang disajikan dengan tusukan dan dipanggang dengan api atau arang. Sate ayam biasanya disajikan dengan bumbu kacang atau bumbu kecap.',
      rating: 5,
    ),
    Food(
      name: 'Soto Ayam',
      image: '../assets/soto_ayam.jpg',
      price: 18000,
      description: 'Soto ayam adalah sup tradisional Indonesia yang berisi potongan daging ayam dan berbagai bahan lainnya, seperti mie, telur rebus, dan sayuran, disajikan dengan kuah bening berbumbu.',
      rating: 4,
    ),
    Food(
      name: 'Martabak',
      image: '../assets/martabak.jpg',
      price: 30000,
      description: 'Martabak adalah sejenis roti terang bulan yang berisi campuran telur, daging giling (biasanya daging sapi atau daging ayam), bawang merah, bawang putih, daun bawang, garam, merica, dan kucai.',
      rating: 4,
    ),
    Food(
      name: 'Ayam Goreng',
      image: '../assets/ayam_goreng.jpg',
      price: 15000,
      description: 'Ayam goreng adalah potongan daging ayam yang digoreng dalam minyak panas hingga kecokelatan dan renyah. Harga: Rp 15.000',
      rating: 3,
    ),
    Food(
      name: 'Mie Goreng',
      image: '../assets/mie_goreng.jpg',
      price: 18000,
      description: 'Mie goreng adalah masakan mie yang digoreng dalam minyak panas dengan bumbu-bumbu tertentu seperti bawang putih, bawang merah, cabai, dan kecap manis. Harga: Rp 18.000',
      rating: 4,
    ),
    Food(
      name: 'Gado-gado',
      image: '../assets/gado_gado.jpg',
      price: 20000,
      description: 'Gado-gado adalah salah satu makanan khas Indonesia yang terdiri dari sayuran-sayuran yang direbus dan dicampur dengan bumbu kacang. Harga: Rp 20.000',
      rating: 4,
    ),
    Food(
      name: 'Rendang',
      image: '../assets/rendang.jpg',
      price: 35000,
      description: 'Rendang adalah masakan daging sapi yang dimasak dalam santan kelapa dan bumbu rempah-rempah yang khas. Harga: Rp 35.000',
      rating: 5,
    ),
    Food(
      name: 'Bakso',
      image: '../assets/bakso.jpg',
      price: 12000,
      description: 'Bakso adalah bola daging yang disajikan dalam kuah kaldu panas. Harga: Rp 12.000',
      rating: 4,
    ),
    Food(
      name: 'Sambal Udang',
      image: '../assets/sambal_udang.jpg',
      price: 25000,
      description: 'Sambal udang adalah udang yang dimasak dengan sambal pedas. Harga: Rp 25.000',
      rating: 4,
    ),
    // Tambahkan data makanan lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DAFTAR MENU WAROENK BAROKAH',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('DAFTAR MENU WAROENK BAROKAH', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          backgroundColor: Colors.red[400],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0), // Tambahkan jarak kiri dan kanan
          child: ListView.builder(
            itemCount: foods.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 4.0),
                decoration: BoxDecoration(
                  color: index % 2 == 0 ? Colors.red.shade50 : Colors.white, // Ganti warna background berdasarkan indeks
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListTile(
                  title: Text(foods[index].name,style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 5), // Spasi antara gambar dan harga
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(foods[index].image),
                      ),
                      const SizedBox(height: 5), // Spasi antara gambar dan harga
                      Text('Harga: Rp ${foods[index].price}'),
                      Row(
                        children: List.generate(
                          5,
                          (starIndex) {
                            if (starIndex < foods[index].rating) {
                              return Icon(Icons.star, color: Colors.orange.shade400);
                            } else {
                              return Icon(Icons.star_border, color: Colors.orange.shade400);
                            }
                          },
                        ),
                      ),
                      const SizedBox(height: 6), // Spasi antara rating dan deskripsi
                      Text(foods[index].description),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
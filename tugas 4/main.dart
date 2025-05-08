import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas4',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> productList = [
    {
      'image': 'assets/andras-vas-Bd7gNnWJBkU-unsplash.jpg',
      'name': 'Asus Tuf A15',
      'desc': 'Laptop performa tinggi untuk kerja & gaming.',
    },
    {
      'image': 'assets/download.jpeg',
      'name': 'Samsung A56',
      'desc': 'HP Android terbaru dengan kamera canggih.',
    },
    {
      'image': 'assets/onur-binay-8OQt1zTnJeE-unsplash.jpg',
      'name': 'Smartwatch i7',
      'desc': 'Jam tangan pintar untuk kesehatan dan notifikasi.',
    },
    {
      'image': 'assets/conor-luddy-IVaKksEZmZA-unsplash.jpg',
      'name': 'Canon 900Te',
      'desc': 'Kamera mirrorless dengan kualitas tinggi.',
    },
    {
      'image':
      'assets/accept custom 4K android flat screen led tv smart 32 40 50 55 65 43 inch smart tv screens.jpeg',
      'name': 'LG Oled 51',
      'desc': 'TV layar besar dengan resolusi 4K.',
    },
    {
      'image': 'assets/sam-grozyan-yDC3NXxrtyc-unsplash.jpg',
      'name': 'MIXIO MH-10',
      'desc': 'Headset noise-cancelling untuk kenyamanan.',
    },
    {
      'image':
      'assets/YUNZII AL66 Wireless Mechanical Keyboard,65% Knob Control Aluminum Gaming Keyboard.jpeg',
      'name': 'Logitech K-120',
      'desc': 'Keyboard mekanikal dengan RGB.',
    },
    {
      'image': 'assets/Jbl Bluetooth Speaker.jpeg',
      'name': 'JBL PartyBox 310',
      'desc': 'Speaker Bluetooth dengan bass kuat.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        iconTheme: IconThemeData(color: Colors.blue[900]),
        title: Row(
          children: [
            Text(
              'Buildmate',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
            ),
            Spacer(),
            Column(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage('assets/athirah.jpg - Copy.jpg'),
                ),
                SizedBox(height: 2),
                Text(
                  'athirahtira_',
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16),
              const Text(
                "Katalog Produk",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    int columnCount =
                    MediaQuery.of(context).size.width < 600 ? 2 : 4;

                    return GridView.count(
                      crossAxisCount: columnCount,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      children: productList.map((product) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 4,
                                offset: const Offset(2, 2),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  product['image']!,
                                  height: 100,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        product['name']!,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        product['desc']!,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

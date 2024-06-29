import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // TODO: Make a collection of cards (102)
  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      // TODO: Add app bar (102)
      appBar: AppBar(
        // TODO: Add buttons and title (102)
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
            color: Colors.white, // Ubah warna ikon menjadi putih
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        title: Text(
          'SHRINE',
          style: TextStyle(color: Colors.white), // Teks akan berwarna putih
        ),
        backgroundColor: Colors.blue, // Ubah warna sesuai preferensi Anda
        // TODO: Add trailing buttons (102)
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
              color: Colors.white, // Ubah warna ikon menjadi putih
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'filter',
              color: Colors.white, // Ubah warna ikon menjadi putih
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],
      ),
      // TODO: Add a grid view (102)
      body: GridView.builder(
        itemCount: 20, // Jumlah kartu yang ingin ditampilkan
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 8.0 / 9.0,
        ),
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 18.0 / 11.0,
                  child: Image.asset('assets/diamond.png'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Title $index'),
                      const SizedBox(height: 8.0),
                      Text('Secondary Text $index'),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}

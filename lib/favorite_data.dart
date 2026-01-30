import 'package:flutter/material.dart';
import 'package:flutter_application_2/abi_1.dart';
import 'favorite_data.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text("My Favorites"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: FavoriteData.favorites.isEmpty
          ? const Center(child: Text("No favorites added"))
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: FavoriteData.favorites.length,
              itemBuilder: (context, index) {
                final item = FavoriteData.favorites[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Expanded(child: Image.asset(item.image)),
                      Text(
                        item.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      // Text(item.price),
                      // IconButton(
                      //   icon: const Icon(Icons.delete, color: Colors.red),
                      //   onPressed: () {
                      //     setState(() {
                      //       FavoriteData.favorites.removeAt(index);
                      //       //(context as Element).markNeedsBuild();
                      //     });
                      //   },
                      // ),
                    ],
                  ),
                );
              },
            ),
    );
  }

  void setState(Null Function() param0) {}
}

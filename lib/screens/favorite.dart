import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/models/card.dart';
import '/models/favorite.dart';
import '/flashcard/data_n2.dart';

class FavoritesPage extends StatelessWidget {
  static const routeName = '/favorites_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: Consumer<Favorites>(
        builder: (context, value, child) => value.items.isNotEmpty
            ? ListView.builder(
                itemCount: value.items.length,
                padding: const EdgeInsets.symmetric(vertical: 16),
                itemBuilder: (context, index) =>
                    FavoriteItemTile(value.items[index]),
              )
            : const Center(
                child: Text('No favorites added.'),
              ),
      ),
    );
    ;
  }
}

class FavoriteItemTile extends StatelessWidget {
  final Flash_Card itemNo;

  const FavoriteItemTile(this.itemNo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  ' ${itemNo.front}',
                  key: Key('favorites_text_${itemNo.id}'),
                ),
                Text('「${itemNo.hanChineseReading} 」'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('${itemNo.meaning}'),
          ],
        ),
        trailing: IconButton(
          key: Key('remove_icon_${itemNo.id}'),
          icon: const Icon(Icons.close),
          onPressed: () {
            context.read<Favorites>().remove(itemNo);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Removed from favorites.'),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}

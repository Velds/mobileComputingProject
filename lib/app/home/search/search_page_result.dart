import 'package:starter_architecture_flutter_firebase/app/home/models/item.dart';
import 'package:starter_architecture_flutter_firebase/app/top_level_providers.dart';
import 'package:starter_architecture_flutter_firebase/constants/strings.dart';
import 'package:starter_architecture_flutter_firebase/routing/app_router.dart';
import 'package:starter_architecture_flutter_firebase/app/home/sells/add_sells_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Templates/item_details.dart';
import '../Templates/item_list_tile.dart';
import '../Templates/list_items_builder.dart';


String? _category='phones';

final itemsStreamProvider = StreamProvider.autoDispose<List<Item>>((ref) {
  final database = ref.watch(databaseProvider);
  return database.itemsSoldStream(_category);
});

// watch database
class SearchPageResult extends ConsumerWidget {

  static Future<void> show(BuildContext context, String? category) async {
    _category = category;
    await Navigator.of(context, rootNavigator: true).pushNamed(
      AppRoutes.searchPage,
    );
  }

  // Future<void> _delete(BuildContext context, Item item) async {
  //   try {
  //     final database = context.read<FirestoreDatabase>(databaseProvider);
  //     await database.deleteItem(item);
  //   } catch (e) {
  //     unawaited(showExceptionAlertDialog(
  //       context: context,
  //       title: 'Operation failed',
  //       exception: e,
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.searchList),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () => EditItemPage.show(context),
          ),
        ],
      ),
      body: _buildContents(context, watch),
    );
  }

  Widget _buildContents(BuildContext context, ScopedReader watch) {
    final itemsAsyncValue = watch(itemsStreamProvider);
    return ListItemsBuilder<Item>(
      data: itemsAsyncValue,
      itemBuilder: (context, item) => Dismissible(
        key: Key('item-${item.id}'),
        background: Container(color: Colors.red),
        direction: DismissDirection.endToStart,
        // onDismissed: (direction) => _delete(context, item),
        child: ItemListTile(
          item: item,
          onTap: () => ItemEntriesPage.show(context, item),
        ),
      ),
    );
  }
}

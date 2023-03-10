import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../domain/book.dart';
import 'book_list_model.dart';
import 'package:provider/provider.dart';

class BookListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BookListModel>(
      create: (_) => BookListModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('本一覧'),
        ),
        body: Center(
          child: Consumer<BookListModel>(builder: (context, model, child) {
            final List<Book>? books = model.books;
            if (books == null) {
              return CircularProgressIndicator();
            }
            final List<Widget> widgets = books!
                .map(
                  (book) => ListTile(
                    title: Text(book.title),
                    subtitle: Text(book.aouthor),
                  ),
                )
                .toList();

            return ListView(
              children: widgets,
            );
          }),
        ),
      ),
    );
  }
}

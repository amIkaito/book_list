import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/add_book/add_boo_model.dart';
import '../domain/book.dart';
import 'book_list_model.dart';
import 'package:provider/provider.dart';

class AddBookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AddBookModel>(
      create: (_) => AddBookModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('本を追加'),
        ),
        body: Center(
          child: Consumer<AddBookModel>(builder: (context, model, child) {
            return Text('本を追加');
          }),
        ),
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EditNote extends StatefulWidget {
  DocumentSnapshot docToEdit;
  EditNote({this.docToEdit});
  @override
  _EditNoteState createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();

  @override
  void initState() {
    title = TextEditingController(text: widget.docToEdit.data()['title']);
    content = TextEditingController(text: widget.docToEdit.data()['content']);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TGD Notes'),
        actions: [
          FlatButton(
              onPressed: () {
                widget.docToEdit.reference.updateData({
                  'title': title.text,
                  'content': content.text,
                }).whenComplete(() => Navigator.pop(context));
                //ref.add({
                //  'title': title.text,
                //   'content': content.text,
                // }).whenComplete(() => Navigator.pop(context));
              },
              child: Text('Save')),
          FlatButton(
              onPressed: () {
                widget.docToEdit.reference.updateData({
                  'title': title.text,
                  'content': content.text,
                }).whenComplete(() => Navigator.pop(context));
                //ref.add({
                //  'title': title.text,
                //   'content': content.text,
                // }).whenComplete(() => Navigator.pop(context));
              },
              child: Text('Delete')),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: TextField(
                controller: title,
                decoration: InputDecoration(hintText: 'Title'),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: TextField(
                  controller: content,
                  maxLines: null,
                  expands: true,
                  decoration: InputDecoration(hintText: 'Content'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

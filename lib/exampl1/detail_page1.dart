import 'package:flutter/material.dart';

class Detail1Page extends StatefulWidget {
  Detail1Page({Key? key, required this.count}) : super(key: key);
  int count;

  @override
  State<Detail1Page> createState() => _Detail1PageState();
}

class _Detail1PageState extends State<Detail1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page ${widget.count}'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, widget.count);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                widget.count--;});},
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 50),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                widget.count++;});},
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

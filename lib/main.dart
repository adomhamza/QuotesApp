import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      home: QuotesList(),
    ));

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(
        text: 'Be the change that you wish to see in the world',
        author: 'Mahatma Gandhi'),
    Quote(
        text: 'A friend is someone who knows all about you and still loves you',
        author: 'Elbert Hubbard'),
    Quote(text: 'So many books, so little time.', author: 'Frank Zappa'),
    // Quote(
    //     text:
    //         "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.",
    //     author: 'Albert Einstein'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.red,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes
            .map(
              (e) => Padding(
                padding: const EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 0.0),
                child: Text(
                  '${e.text} - ${e.author}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    letterSpacing: 1.0,
                    height: 2.0,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

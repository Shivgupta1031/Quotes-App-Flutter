import 'package:flutter/material.dart';

class QuoteModel {

  String quote;
  String written_by;
  Color color;

  QuoteModel({
    required this.quote,
    required this.written_by,
    required this.color,
  });

  static List<QuoteModel> dataList(){
    List<QuoteModel> data = [];

    data.add(QuoteModel(quote: "The only limit to our realization of tomorrow will be our doubts of today.", written_by: "Franklin D. Roosevelt",color:Colors.red));
    data.add(QuoteModel(quote: "Life is what happens when you're busy making other plans.", written_by: "John Lennon",color:Colors.green));
    data.add(QuoteModel(quote: "The best way to predict the future is to create it.", written_by: "Peter Drucker",color:Colors.orange));
    data.add(QuoteModel(quote: "Believe you can and you're halfway there.", written_by: "Theodore Roosevelt",color:Colors.purple));
    data.add(QuoteModel(quote: "Your time is limited, don't waste it living someone else's life.", written_by: "Steve Jobs",color:Colors.blue));
    data.add(QuoteModel(quote: "The only impossible journey is the one you never begin.", written_by: "Tony Robbins",color:Colors.amber));
    data.add(QuoteModel(quote: "Don't watch the clock; do what it does. Keep going.", written_by: "Sam Levenson",color:Colors.green));
    data.add(QuoteModel(quote: "Life is really simple, but we insist on making it complicated.", written_by: "Confucius",color:Colors.orange));
    data.add(QuoteModel(quote: "The future belongs to those who believe in the beauty of their dreams.", written_by: "Eleanor Roosevelt",color:Colors.purple));
    data.add(QuoteModel(quote: "Strive not to be a success, but rather to be of value.", written_by: "Albert Einstein",color:Colors.red));
    data.add(QuoteModel(quote: "Do not wait to strike till the iron is hot, but make it hot by striking.", written_by: "William Butler Yeats",color:Colors.pink));
    data.add(QuoteModel(quote: "It always seems impossible until it's done.", written_by: "Nelson Mandela",color:Colors.lightBlue));
    data.add(QuoteModel(quote: "The purpose of our lives is to be happy.", written_by: "Dalai Lama",color:Colors.blueGrey));
    data.add(QuoteModel(quote: "You have within you right now, everything you need to deal with whatever the world can throw at you.", written_by: "Brian Tracy",color:Colors.red));
    data.add(QuoteModel(quote: "Success is not in what you have, but who you are.", written_by: "Bo Bennett",color:Colors.cyan));
    data.add(QuoteModel(quote: "The best revenge is massive success.", written_by: "Frank Sinatra",color:Colors.brown));
    data.add(QuoteModel(quote: "Do not wait for leaders; do it alone, person to person.", written_by: "Mother Teresa",color:Colors.deepOrange));
    data.add(QuoteModel(quote: "Life is 10% what happens to us and 90% how we react to it.", written_by: "Charles R. Swindoll",color:Colors.green));
    data.add(QuoteModel(quote: "The way to get started is to quit talking and begin doing.", written_by: "Walt Disney",color:Colors.indigo));
    data.add(QuoteModel(quote: "Success usually comes to those who are too busy to be looking for it.", written_by: "Henry David Thoreau",color:Colors.red));

    return data;
  }
}
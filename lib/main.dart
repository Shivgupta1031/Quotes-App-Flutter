import 'package:flutter/material.dart';
import 'package:quotes_app_flutter/models/quote_model.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<QuoteModel> data = [];

  void setData() {
    data = QuoteModel.dataList();
  }

  _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    setData();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Quotes App"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  _launchURL(
                      "https://www.womansday.com/life/g2078/short-inspirational-quotes/");
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: data[index].color,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12, // Adjust color as needed
                          blurRadius: 2,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(data[index].quote,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18)),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            alignment: Alignment.bottomRight,
                            child: Text("~${data[index].written_by}",
                                style: TextStyle(fontStyle: FontStyle.italic,
                                  color: Colors.white,)))
                      ],
                    ),
                  ),
                ),
              );
            }),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

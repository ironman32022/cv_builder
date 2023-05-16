import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FutureBuilder(
              future: FirebaseController().getFullName(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data, style: headerTextStyle);
                }
                return AppShimmer(
                  child: Text("======= ======", style: headerTextStyle),
                );
              }),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: FutureBuilder(
                future: FirebaseController().getDesignation(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data, style: headerTextStyle);
                  }
                  return AppShimmer(
                    child: Text("==============", style: headerTextStyle),
                  );
                }),
          ),
          FutureBuilder(
              future: FirebaseController().getDescription(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data, style: bodyTextStyle);
                }
                return AppShimmer(
                  child: Text("==============", style: headerTextStyle),
                );
              }),
          Container(
              margin: const EdgeInsets.only(top: 30.0),
              child: Text(title2, style: headerTextStyle)),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              description,
              style: bodyTextStyle,
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 30.0),
              child: Text(title3, style: headerTextStyle)),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: Text(
              description,
              style: bodyTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}

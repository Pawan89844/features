import 'package:features/data/user_data.dart';
import 'package:flutter/material.dart';

class MySearch extends StatefulWidget {
  const MySearch({super.key});

  @override
  State<MySearch> createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  final TextEditingController _searchcontroller = TextEditingController();
  String productName = '';
  List<UserDataModel> _searched = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   alignment: Alignment.center,
          //   child: Text('Searched Product: $productName'),
          // ),
          TextField(
            controller: _searchcontroller,
            onChanged: (value) {
              if (value.isNotEmpty) {
                var data = UserData.userData
                    .where((prod) => prod.productName
                        .toLowerCase()
                        .startsWith(value.toLowerCase()))
                    .toList();
                if (!_searched.contains(data[0])) {
                  _searched.addAll(data);
                }
                // setState(() {});
              } else {
                _searched.clear();
              }
              setState(() {});
            },
            decoration: const InputDecoration(
                labelText: 'Search Here',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
            // onSubmitted: (value) {

            //   // for (var i = 0; i < data.length; i++) {
            //   //   print(data[i].productName);
            //   // }
            //   // print('Data: ${data[0].productName}');
            // },
          ),
          if (_searched.isNotEmpty) ...[
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _searched.length,
              itemBuilder: (context, i) {
                return Card(
                  child: Text(_searched[i].productName),
                );
              },
            )
          ]
        ],
      ),
    );
  }
}

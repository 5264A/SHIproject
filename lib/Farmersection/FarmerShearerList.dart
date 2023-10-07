//FarmerShearerList

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FarmerShearerList extends StatefulWidget {
  const FarmerShearerList({Key? key}) : super(key: key);

  @override
  State<FarmerShearerList> createState() => _FarmerShearerListState();
}

class _FarmerShearerListState extends State<FarmerShearerList> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "image":
      "https://static.vecteezy.com/system/resources/thumbnails/020/765/399/small/default-profile-account-unknown-icon-black-silhouette-free-vector.jpg",
      "id": 1,
      "name": "Ramesh Ahuja",
      "des": "Phone - 98362781911",
    },
    {
      "id": 2,
      "name": "Keshav Katyarey",
      "des": "Phone - 98362781990",
      "image":
      "https://static.vecteezy.com/system/resources/thumbnails/020/765/399/small/default-profile-account-unknown-icon-black-silhouette-free-vector.jpg",
    },
    {
      "id": 3,
      "name": "Harsh Shingh",
      "des": "Phone - 98362781917",
      "image":
      "https://static.vecteezy.com/system/resources/thumbnails/020/765/399/small/default-profile-account-unknown-icon-black-silhouette-free-vector.jpg",
    },
    {
      "id": 4,
      "name": "Amit Malani",
      "des": "Phone - 98362787856 ",
      "image":
      "https://static.vecteezy.com/system/resources/thumbnails/020/765/399/small/default-profile-account-unknown-icon-black-silhouette-free-vector.jpg",
    },
    {
      "id": 5,
      "name": "Harsh Chada",
      "des": "Phone - 98362781889",
      "image":
      "https://static.vecteezy.com/system/resources/thumbnails/020/765/399/small/default-profile-account-unknown-icon-black-silhouette-free-vector.jpg", },
    {
      ",id": 6,
      "name": "Kashish Mehra",
      "des": "Phone - 98362781911",
      "image":
    "https://static.vecteezy.com/system/resources/thumbnails/020/765/399/small/default-profile-account-unknown-icon-black-silhouette-free-vector.jpg",},
     {
      "id": 7,
      "name": "Manish Singh",
      "des": "Phone - 98362781911",
      "image":
      "https://static.vecteezy.com/system/resources/thumbnails/020/765/399/small/default-profile-account-unknown-icon-black-silhouette-free-vector.jpg",
    },
    {
      "id": 8,
      "name": "Vikram Aditya",
      "des": "Phone - 98362781956",
      "image":
      "https://static.vecteezy.com/system/resources/thumbnails/020/765/399/small/default-profile-account-unknown-icon-black-silhouette-free-vector.jpg",
    },
    {
      "id": 9,
      "name": "Ramesh Babu",
      "des": "Phone - 98362781911",
      "image":
      "https://static.vecteezy.com/system/resources/thumbnails/020/765/399/small/default-profile-account-unknown-icon-black-silhouette-free-vector.jpg",
    },
    {
      "id": 10,
      "name": "Trisha Mehta",
      "des": "Phone - 98362781911 ",
      "image":
      "https://static.vecteezy.com/system/resources/thumbnails/020/765/399/small/default-profile-account-unknown-icon-black-silhouette-free-vector.jpg",
    },



  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers= [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.white,
        centerTitle: true,
        title: const Text('Shearer-List',style: TextStyle(color: Colors.blueAccent),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                //pro
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search State-Name",
               // color: CupertinoColors.white,
                suffixIcon: const Icon(Icons.search),
                //prefix: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Card(
                  elevation: 1,
                  color: CupertinoColors.white,
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                      NetworkImage(_foundUsers[index]['image']),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text(_foundUsers[index]['name']),
                    subtitle: Text('${_foundUsers[index]["des"]}'),
                  ),
                ),
              )
                  : const Text(
                'No results found Please try with diffrent search',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


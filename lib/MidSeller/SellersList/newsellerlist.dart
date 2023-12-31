import 'package:flutter/material.dart';
import 'package:projectwork/Profile/ProfileScreen.dart';

import 'package:url_launcher/url_launcher.dart';

import 'Sellerlistserver.dart';
import 'Sellerslistcardview.dart';

class SellersList extends StatefulWidget {
  const SellersList({super.key});

  @override
  State<SellersList> createState() => _SellersListState();
}

class _SellersListState extends State<SellersList> {
  List _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = availableLogistic.cast<Map<String, dynamic>>();
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = availableLogistic.cast();
    } else {
     /* results = availableLogistic
          .where((user) =>
          user["title"].toLowerCase().contains(enteredKeyword.toLowerCase())).cast()
         .toList();*/
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
          leading: const Icon(Icons.location_pin),
          title: Center(child: const Text("Sellers-List")),

        ),
        body: Column(
          children: [
            SizedBox(height: 5,),

               Container(
                  decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    'assets/nice-stash-yarn.gif',
                    fit: BoxFit.cover,
                    height: 220,
                    width: double.infinity,
                  )),
            SizedBox(height: 15,),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search State-Name",
                suffixIcon: const Icon(Icons.search),
                //prefix: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: availableLogistic.length,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () {
                        launchUrl(Uri.parse(availableLogistic[i].serviceUrl),
                            mode: LaunchMode.inAppWebView);
                      },
                      child: CommonCard(
                        number: availableLogistic[i].number,
                        mailId: availableLogistic[i].mailId,
                        title: availableLogistic[i].title,
                        rating: availableLogistic[i].rating,
                        ratings: availableLogistic[i].ratings,
                        remarks: availableLogistic[i].remarks,
                        availability: availableLogistic[i].wooltype,
                        enquiries: availableLogistic[i].price,
                        imageUrl: availableLogistic[i].imageUrl,
                        address: availableLogistic[i].address,
                      ),
                    );
                  }),
            ),
          ],

      ),
    );
  }
}
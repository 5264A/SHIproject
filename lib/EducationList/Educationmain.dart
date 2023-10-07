import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'EducationServer.dart';
import 'EducationCardview.dart';

class EducationList extends StatefulWidget {
  const EducationList({super.key});

  @override
  State<EducationList> createState() => _EducationListState();
}

class _EducationListState extends State<EducationList> {
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
          leading: BackButton(),
          actions: <Widget>[
            PopupMenuButton<int>(
              onSelected: (item) => handleClick(item),
              itemBuilder: (context) => [
                PopupMenuItem<int>(value: 0, child: Text('Diff-Type')),
                PopupMenuItem<int>(value: 1, child: Text('More')),
              ],
            ),
          ],

          backgroundColor:CupertinoColors.white,
         // leading: const Icon(Icons.location_pin),
          title: Text('Wool-Education'),

        ),
        body: Column(
          children: [
            //SizedBox(height: 5,),




            //SizedBox(height: 15,),
            


            Container(
              child: Expanded(

                child: ListView.builder(
                    itemCount: availableLogistic.length,
                    itemBuilder: (context, i) {
                      return GestureDetector(
                        onTap: () {
                          launchUrl(Uri.parse(availableLogistic[i].serviceUrl),
                              mode: LaunchMode.inAppWebView);
                        },
                        child: EducationCommonCard(
                          number: availableLogistic[i].number,
                          mailId: availableLogistic[i].mailId,
                          title: availableLogistic[i].title,
                          rating: availableLogistic[i].rating,
                          ratings: availableLogistic[i].ratings,
                          remarks: availableLogistic[i].remarks,
                          educatortype: availableLogistic[i].Educatortype,
                          Educationenquiries: availableLogistic[i].price,
                          imageUrl: availableLogistic[i].imageUrl,
                          address: availableLogistic[i].address,
                        ),
                      );
                    }),
              ),
            ),
          ],

      ),
    );
  }
}

void handleClick(int item) {
  switch (item) {
    case 0:
      //
      break;
    case 1:
      break;
  }
}
/*  Container(
                decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  'assets/education.gif',
                  fit: BoxFit.cover,
                  height: 220,
                  width: double.infinity,
                )),*/
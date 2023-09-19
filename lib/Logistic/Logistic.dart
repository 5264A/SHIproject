import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logistic extends StatefulWidget {
  const Logistic({Key? key}) : super(key: key);

  @override
  State<Logistic> createState() => _LogisticState();
}

class _LogisticState extends State<Logistic> {
  List imageList = [
    {"id": 1, "image_path": 'assets/news2.webp'},
    {"id": 2, "image_path": 'assets/news3.jpg'},
    {"id": 3, "image_path": 'assets/eventcopy.jpg'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  final List<Map<String, dynamic>> _allUsers = [
    {
      "image":
      "https://im.rediff.com/300-300/movies/2019/oct/14neeraj-madhav2.jpg",
      "id": 1,
      "name": "Andhra Pradesh",
      "des": "Co-founder & CEO @ ",
      "address":"Sri-Lunka",
      "Coomercial-Type":"Hall-Sector",
      "Price":"200 per Hector",
      "Phone":"873627228",

    },
    {
      "id": 2,
      "name": "Arunachal Pradesh",
      "des": "Co-founder & CEO @ ",
      "image":
      "https://upload.wikimedia.org/wikipedia/en/4/47/Iron_Man_%28circa_2018%29.png",
      "address":"Sri-Lunka",
      "Coomercial-Type":"Hall-Sector",
      "Price":"200 per Hector",
      "Phone":"873627228",
    },
    {
      "id": 3,
      "name": "Assam",
      "des": "Co-founder & CEO @ ",
      "image":
      "https://sa1s3optim.patientpop.com/assets/images/provider/photos/1888657.jpg",
      "address":"Sri-Lunka",
      "Coomercial-Type":"Hall-Sector",
      "Price":"200 per Hector",
      "Phone":"873627228",
    },
    {
      "id": 4,
      "name": "Bihar",
      "des": "Co-founder & CEO @ ",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_LmG47_W3RM0QBVGI23-vodL_oOOJxLIBrg&usqp=CAU",
      "address":"Sri-Lunka",
      "Coomercial-Type":"Hall-Sector",
      "Price":"200 per Hector",
      "Phone":"873627228",
    },
    {
      "id": 5,
      "name": "Chhattisgarh",
      "des": "Co-founder & CEO @ ",
      "image":
      "https://img.freepik.com/free-photo/black-man-city_1157-17027.jpg?w=2000",
      "address":"Sri-Lunka",
      "Coomercial-Type":"Hall-Sector",
      "Price":"200 per Hector",
      "Phone":"873627228",
    },
    {
      "id": 6,
      "name": "Goa",
      "des": "Co-founder & CEO @ ",
      "image":
      "https://media.gettyimages.com/photos/portrait-of-smiling-mid-adult-man-wearing-tshirt-picture-id985138674?s=612x612",
      "address":"Sri-Lunka",
      "Coomercial-Type":"Hall-Sector",
      "Price":"200 per Hector",
      "Phone":"873627228",
    },
    {
      "id": 7,
      "name": "Gujarat",
      "des": "Co-founder & CEO @ ",
      "image":
      "https://image.shutterstock.com/image-photo/handsome-young-man-running-across-260nw-587931092.jpg",
      "address":"Sri-Lunka",
      "Coomercial-Type":"Hall-Sector",
      "Price":"200 per Hector",
      "Phone":"873627228",
    },
    {
      "id": 8,
      "name": "Haryana",
      "des": "Co-founder & CEO @ ",
      "image":
      "https://media.istockphoto.com/photos/portrait-of-young-happy-indian-business-man-executive-looking-at-picture-id1309489745?b=1&k=20&m=1309489745&s=170667a&w=0&h=Wo_7nESC_ePyEYfEsnOm-rP6ElkxbWqIB3Ga4W3nw8M=",
      "address":"Sri-Lunka",
      "Coomercial-Type":"Hall-Sector",
      "Price":"200 per Hector",
      "Phone":"873627228",
    },
    {
      "id": 9,
      "name": "Himachal Pradesh",
      "des": "Co-founder & CEO @ ",
      "image":
      "https://media.istockphoto.com/photos/young-man-looking-at-digital-tablet-picture-id1184382530?k=20&m=1184382530&s=612x612&w=0&h=-G67wR9BU2-XqLTR70purl0vb2PFbu3OAg0T7O_ZpiI=",
      "address":"Sri-Lunka",
      "Coomercial-Type":"Hall-Sector",
      "Price":"200 per Hector",
      "Phone":"873627228",
    },

  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
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
        centerTitle: true,
        title: const Text('State-Wise Wool Price',style: TextStyle(color: Colors.blueAccent),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
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
            Container(height: 199,
              child: Column(children: [

                Stack(
                  children: [
                    CarouselSlider(
                        items: imageList
                            .map(
                              (item) => Container(

                             margin: EdgeInsets.all(40),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30),
                            ),

                            child: Image.asset(

                              item['image_path'],
                              fit: BoxFit.cover,


                            ),
                          ),
                        )
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,
                          aspectRatio: 2,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),


                    ),
                    Positioned(
                      bottom: 6,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentIndex == entry.key ? 17 : 7,
                              height: 7.0,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == entry.key
                                      ? Colors.red
                                      : Colors.teal),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                  ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Container(
                  height: 200,
                  child: Card(
                    elevation: 1,
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    child: Column(
                      children: [
                        ListTile(
                    leading: CircleAvatar(
                        radius: 30.0,
                          backgroundImage:
                          NetworkImage(_foundUsers[index]['image']),
                             backgroundColor: Colors.transparent,
                                ),
                            title: Text(_foundUsers[index]['name']),
                            subtitle: Text('${_foundUsers[index]["des"]}'),
                          ),




                      ],
                    ),
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
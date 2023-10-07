import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class EducationCommonCard extends StatefulWidget {
  const EducationCommonCard(
      {super.key,
        required this.number,
        required this.mailId,
        required this.title,
        required this.rating,
        required this.ratings,
        required this.remarks,
        required this.educatortype,
        required this.Educationenquiries,
        required this.imageUrl,
        required this.address});
  final String title;
  final double rating;
  final int ratings;
  final String remarks;
  final String educatortype;
  final int Educationenquiries;
  final String imageUrl;
  final String address;
  final int number;
  final String mailId;

  @override
  State<EducationCommonCard> createState() => _EducationCommonCardState();
}

class _EducationCommonCardState extends State<EducationCommonCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 200,
        width: 400,
        child: Card(
          //color: Color(0xffefedf9),
          color:CupertinoColors.white,
          child: Row(
            children: [
              Column(
                children: [
                  SizedBox(height: 15,),
                  CircleAvatar(
                    radius: 42.0,
                    backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.transparent,
                  ),

                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 7,
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Icons.cast_for_education),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  widget.rating.toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "${widget.ratings} Ratings",
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                        const SizedBox(
                          width: 55,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.address,
                          style: const TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 171, 169, 169)),
                        ),
                        const SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children:[
                            Text('Wool-Type = ', style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black),),
                        Text(
                          widget.educatortype,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black,),
                        ),],),
                        const SizedBox(
                          width: 85,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Icons.price_change_rounded),
                        Text(
                          " ${widget.Educationenquiries}INR per hr.",
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 11, 12, 11)),
                        ),
                        const SizedBox(
                          width: 85,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () async {
                            final Uri url = Uri(
                                scheme: 'tel', path: widget.number.toString());
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              print('Cannot launch');
                            }
                          },
                          child: Container(
                            height: 40,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              //color: Color(0xffcbc3e3),
                              color:Colors.white70,
                            ),
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.call,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Call",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.blue),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            String? encodeQueryParameters(
                                Map<String, String> params) {
                              return params.entries
                                  .map((MapEntry<String, String> e) =>
                              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                  .join('&');
                            }

                            final Uri emailUri = Uri(
                              scheme: 'mailto',
                              path: widget.mailId,
                              query: encodeQueryParameters(<String, String>{
                                'subject':
                                'Enquiry regarding your logistic service',
                              }),
                            );
                            launchUrl(emailUri);
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white38,
                            ),
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.payment,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Pay",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.blue),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
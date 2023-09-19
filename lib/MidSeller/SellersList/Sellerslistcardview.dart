import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class CommonCard extends StatefulWidget {
  const CommonCard(
      {super.key,
        required this.number,
        required this.mailId,
        required this.title,
        required this.rating,
        required this.ratings,
        required this.remarks,
        required this.availability,
        required this.enquiries,
        required this.imageUrl,
        required this.address});
  final String title;
  final double rating;
  final int ratings;
  final String remarks;
  final String availability;
  final int enquiries;
  final String imageUrl;
  final String address;
  final int number;
  final String mailId;

  @override
  State<CommonCard> createState() => _CommonCardState();
}

class _CommonCardState extends State<CommonCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 250,
        width: 400,
        child: Card(
          color: Colors.white,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Image.network(
                      widget.imageUrl,
                      fit: BoxFit.cover,
                     // centerSlice: Rect.fromCircle(center: , radius: radius),

                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Icons.person),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 24),
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
                          height: 30,
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
                                      color: Colors.white, fontSize: 20),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 18,
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
                              fontWeight: FontWeight.w600, fontSize: 18),
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
                              fontSize: 19,
                              color: Color.fromARGB(255, 171, 169, 169)),
                        ),
                        const SizedBox(
                          width: 30,
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
                        Text(
                          widget.remarks,
                          style: const TextStyle(
                              fontSize: 19,
                              color: Color.fromARGB(255, 17, 14, 14)),
                        ),
                        const SizedBox(
                          width: 60,
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
                                color: Colors.deepOrange),),
                        Text(
                          widget.availability,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.blueAccent,),
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
                          " ${widget.enquiries}INR per Kg.",
                          style: const TextStyle(
                              fontSize: 20,
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
                              color: Color.fromARGB(255, 250, 119, 71),
                            ),
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Call now",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
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
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 250, 119, 71),
                            ),
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.help,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Send-Enquiry",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
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
class LogisticServices {
  final int number;
  final String mailId;
  final String serviceUrl;
  final String title;
  final double rating;
  final int ratings;
  final String remarks;
  final String wooltype;
  final int price;
  final String imageUrl;
  final String address;
  const LogisticServices({
    required this.mailId,
    required this.number,
    required this.serviceUrl,
    required this.address,
    required this.title,
    required this.rating,
    required this.ratings,
    required this.remarks,
    required this.wooltype,
    required this.price,
    required this.imageUrl,
  });
}

const availableLogistic = [
  LogisticServices(
      mailId: "mohit.21ug2013@iiitranchi.ac.in",
      number: 8210688300,
      serviceUrl: "https://www.delhivery.com/",
      title: 'Samamaaaa',
      rating: 4.2,
      ratings: 200,
      remarks: 'most trusted',
      wooltype: 'Wool-type 1',
      price: 290,
      address: 'Namkum Thana Namkum',
      imageUrl:
      "https://media.gettyimages.com/id/685339256/photo/bella-hadid-attends-the-okja-screening-during-the-70th-annual-cannes-film-festival-at-palais.jpg?s=612x612&w=gi&k=20&c=9Y5XFJ4TISmSpBSbblQlUZKje7VZaNEUTyL58rr1HOY="),
  LogisticServices(
      mailId: "mohit.21ug2013@iiitranchi.ac.in",
      number: 8210688300,
      serviceUrl: "https://www.xpressbees.com/",
      title: 'Akg-Dealer-Limited',
      rating: 4.0,
      ratings: 324,
      remarks: 'fantastic',
      wooltype: 'wooltype2',
      price: 500,
      address: 'Kanke Road Ranchi',
      imageUrl:
      "https://media.gettyimages.com/id/685339256/photo/bella-hadid-attends-the-okja-screening-during-the-70th-annual-cannes-film-festival-at-palais.jpg?s=612x612&w=gi&k=20&c=9Y5XFJ4TISmSpBSbblQlUZKje7VZaNEUTyL58rr1HOY="),
  LogisticServices(
      mailId: "mohit.21ug2013@iiitranchi.ac.in",
      number: 18602331234,
      serviceUrl: "https://www.bluedart.com/",
      title: 'Akg-Dealer-Limited',
      rating: 3.9,
      ratings: 444,
      remarks: 'awesome',
      address: 'Tata Road',
      wooltype: 'wooltype3',
      price: 900,
      imageUrl:
      "https://media.gettyimages.com/id/685339256/photo/bella-hadid-attends-the-okja-screening-during-the-70th-annual-cannes-film-festival-at-palais.jpg?s=612x612&w=gi&k=20&c=9Y5XFJ4TISmSpBSbblQlUZKje7VZaNEUTyL58rr1HOY="),
];
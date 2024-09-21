// ignore_for_file: non_constant_identifier_names, file_names
import 'package:flutter/material.dart';

class SuggestedCommentPage extends StatelessWidget {
  const SuggestedCommentPage({super.key});
  final double SizedBoxWidth = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Comment",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Ahmad: "),
                        const Expanded(
                          child: Text(
                            "I absolutely loved this place! The atmosphere was amazing and the people were so welcoming.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Fatima: "),
                        const Expanded(
                          child: Text(
                            "The view was breathtaking! I can't recommend this place enough for anyone looking for a great experience.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Omar: "),
                        const Expanded(
                          child: Text(
                            "Best experience of my life! I would love to visit again and share this experience with my friends.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Aisha: "),
                        const Expanded(
                          child: Text(
                            "I can't wait to visit again! The memories I made here will last a lifetime.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Youssef: "),
                        const Expanded(
                          child: Text(
                            "A hidden gem, loved every moment! I will tell all my friends about this incredible place.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Sara: "),
                        const Expanded(
                          child: Text(
                            "What an amazing experience! I enjoyed the local culture and the food was delicious.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Zaid: "),
                        const Expanded(
                          child: Text(
                            "Totally worth the trip! The sights were stunning, and the hospitality was top-notch.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Laila: "),
                        const Expanded(
                          child: Text(
                            "I enjoyed every bit of it! Every corner had something beautiful to offer.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Khaled: "),
                        const Expanded(
                          child: Text(
                            "Absolutely fantastic experience! I felt like I was in a different world.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Nadia: "),
                        const Expanded(
                          child: Text(
                            "So much beauty to explore! This place has my heart forever.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Rami: "),
                        const Expanded(
                          child: Text(
                            "This place stole my heart! I can't stop thinking about my time here.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Dina: "),
                        const Expanded(
                          child: Text(
                            "Every moment was magical! I took so many photos to remember it by.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Samir: "),
                        const Expanded(
                          child: Text(
                            "An unforgettable experience! I highly recommend visiting this place to everyone.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Layla: "),
                        const Expanded(
                          child: Text(
                            "Such a wonderful atmosphere! I felt so at peace here.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Nabil: "),
                        const Expanded(
                          child: Text(
                            "Can't recommend it enough! Every detail was thoughtfully crafted.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Hana: "),
                        const Expanded(
                          child: Text(
                            "This place is a treasure! I discovered so much beauty.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Faisal: "),
                        const Expanded(
                          child: Text(
                            "A must-visit for everyone! I made memories that will last a lifetime.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Maya: "),
                        const Expanded(
                          child: Text(
                            "Truly a delightful experience! I want to come back again and again.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: SizedBoxWidth),
                        const Text("Jamal: "),
                        const Expanded(
                          child: Text(
                            "One of the best trips ever! Every moment was filled with joy.",
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ))));
  }
}

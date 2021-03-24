import 'package:flutter/material.dart';

class detailsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return detailsState();
  }
}

class detailsState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text("Saara Poly Silk ...."),
              ],
            ),
            Row(
              children: [
                IconButton(icon: Icon(Icons.ac_unit), onPressed: null),
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: null,
                ),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Saara Poly Silk Embellished, Woven Salwar Suit Material(Unstiched)",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black12),
                    alignment: Alignment.center,
                    child: Text(
                      "Special Price",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "\u20ac549",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "\u20ac1873",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38,
                            decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "\u20ac70% off",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.red),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "4.3",
                              ),
                              WidgetSpan(
                                child: Icon(Icons.star, size: 14,color: Colors.white,),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "2814 ratings",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38,
                        )
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Size",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                        "Tip For the best fit ,buy one size larger than usual size."),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        child: Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 40,
                            child: Text("XS")),
                      ),
                      Card(
                        child: Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 40,
                            child: Text("S")),
                      ),
                      Card(
                        child: Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 40,
                            child: Text("M")),
                      ),
                      Card(
                        child: Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 40,
                            child: Text("L")),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Color",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.cyan),
                        ),
                      ],
                    )
                  ]))),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Product Details",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Color",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "Length",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "Type",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "Sleve",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 100,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Yellow",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "KneeLength",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "Bandage",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "Cap Sleeve",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Product Description",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Slip into this trendy and"
                      " attractive dress fro Rudraaksha and look stylish effortlessly."
                      " Made to accentuate any body type, it will give you that extra oomph"
                      " and make you stand out wherever you are. Keep the accessories minimal "
                      "for that added elegant look, just you favorite heel and dangling…",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

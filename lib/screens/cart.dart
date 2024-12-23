import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  final String image;
  final String name;
  final String describtoin;
  final double price;
  const Cart(
      {Key? key,
      required this.image,
      required this.name,
      required this.describtoin,
      required this.price})
      : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 224, 245, 227), // Light green background
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back Button Container
                  Container(
                    width: 50, // Set width for uniformity
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFF2A9D8E), // Green color

                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  // Share Button Container
                  Container(
                    width:
                        50, // Match the width with the back button for consistency
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFF2A9D8E), // Green color
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.share,
                        size: 24,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Add share functionality here
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Product Image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                  height: 200,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Product Name and Description
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Broccoli",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Expanded(
                        child: SingleChildScrollView(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec habitant egestas quisque viverra sapien volutpat, nunc. "
                            "Blandit magna malesuada pellentesque lectus justo, porttitor aliquam. In viverra suspendisse enim, augue. Est, eleifend "
                            "sed morbi euismod lacus lorem nulla blandit. Vitae, porttitor tempus, mauris sociis egestas senena non. Lorem amet, pellentesque "
                            "hendrerit facilisis volutpat urna dui odio arcu. Aliquet, pellentesque facilisis ultrices tristique interdum semper et integer. "
                            "Sed in integer posuere dictum cras. Cras bibendum gravida a tortor malesuada risus, vestibulum sed ultricies.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Buy Button
                      Center(
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // Add action for "Buy item now" button
                            },
                            style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              backgroundColor:
                                  const Color(0xFF2A9D8E), // Green button color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                            child: const Text(
                              "Buy item now",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

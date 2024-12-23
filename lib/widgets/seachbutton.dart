import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Center the row
          children: [
            // The TextField with a fixed width and a search icon
            Container(
              width: MediaQuery.of(context).size.width *
                  0.8, // 70% of screen width
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search the way you want",
                  prefixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade600,
                    ),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
            ),

            // The Container holding the icon next to the TextField
            Container(
              width: 55,
              height: 55,
              child: IconButton(
                icon: Icon(Icons.wifi),
                onPressed: () {
                  // Add your action here
                },
              ),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

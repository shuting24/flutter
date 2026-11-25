import 'package:flutter/material.dart';
import 'package:random_project_name/block.dart';

void main() {
  runApp(const Nameanything());
}

class Nameanything extends StatelessWidget {
  const Nameanything({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Item 1
              Container(
                padding: const EdgeInsets.all(14),
                decoration: const BoxDecoration(
                  color: Colors.yellowAccent,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/st.png', width: 30),
                    const SizedBox(height: 10),
                    const Text("Hi Shee"),
                    const SizedBox(height: 10),
                    const Text("228742"),
                  ],
                ),
              ),
              Expanded(
                child: Block(
                  "assets/images/st.png",
                  "random image",
                  colours: Colors.green,
                ),
              ),

              // Item 2
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.yellowAccent,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/st.png', width: 30),
                    const SizedBox(height: 10),
                    const Text("Hi Ali"),
                    const SizedBox(height: 10),
                    const Text("wuhuu"),
                  ],
                ),
              ),
              Expanded(
                child: Block(
                  "assets/images/st.png",
                  "random image",
                  colours: Colors.blue,
                ),
              ),

              // Item 3
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.yellowAccent,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/st.png', width: 30),
                    const SizedBox(height: 10),
                    const Text("random Text"),
                    const SizedBox(height: 10),
                    const Text("Another random Text"),
                  ],
                ),
              ),
              Expanded(
                child: Block(
                  "assets/images/st.png",
                  "random image",
                  colours: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

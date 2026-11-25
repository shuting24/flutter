import "package:flutter/material.dart";
import 'package:random_project_name/block.dart';

class Home extends StatelessWidget {
  final bool isDarkMode;
  final void Function() onToggleTheme;

  const Home({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  // potential tool call
  void doSomething(String name) {
    print('Hello $name');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            doSomething('Dawood');
          },
          icon: const Icon(Icons.admin_panel_settings),
        ),
        title: const Center(child: Text("My first App")),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: onToggleTheme,
          ),
        ],
      ),

      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            ClipOval(
              child: Image.asset(
                'assets/images/stailvell.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Shee Shu Ting",
              style: TextStyle(
                color: Color.fromARGB(255, 6, 6, 97),
                fontSize: 28,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.blue,
              ),
            ),
            // Cointainer
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 19,
                vertical: 3,
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                // borderRadius: BorderRadius.all(Radius.circular(10)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.school, size: 18, color: Colors.white),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Student",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Block(
                      "assets/images/stailvell.png",
                      "random image",
                      colours: Colors.green,
                    ),
                  ),
                  Expanded(
                    child: Block(
                      "assets/images/stailvell.png",
                      "random image",
                      colours: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Block(
                      "assets/images/stailvell.png",
                      "random image",
                      colours: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
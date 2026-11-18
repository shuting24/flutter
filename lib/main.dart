import "package:flutter/material.dart";

void main() {
  runApp(const Nameanything());
}

class Nameanything extends StatelessWidget {
  const Nameanything({super.key});

  void doSomething(String name) {
    print('Hello $name');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF5F7FF),

        appBar: AppBar(
          backgroundColor: const Color(0xFF5271FF),
          foregroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              doSomething('Dawood');
            },
            icon: const Icon(Icons.admin_panel_settings),
          ),
          title: const Center(child: Text("My first App")),
        ),

        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),

              ClipOval(
                child: Image.asset(
                  'assets/images/st.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Shu Ting",
                style: TextStyle(
                  color: Color(0xFF263B70),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Color(0xFFDCE8FF),
                ),
              ),

              // Container
              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 19,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF5271FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.school, size: 18, color: Colors.white),
                    SizedBox(width: 10),
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

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: const BoxDecoration(color: Color(0xFFE0F2FE)),
                      child: Column(
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

                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(color: Color(0xFFEDE9FE)),
                      child: Column(
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

                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(color: Color(0xFFFFE4EC)),
                      child: Column(
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

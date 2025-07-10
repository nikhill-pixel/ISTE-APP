import 'package:flutter/material.dart';

class AboutISTEPage extends StatelessWidget {
  final bool isDarkMode;
  const AboutISTEPage({super.key, required this.isDarkMode});

  static Route route({required bool isDarkMode}) {
    return MaterialPageRoute<void>(builder: (_) => AboutISTEPage(isDarkMode: isDarkMode));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? const Color(0xFF131318) : Colors.white,
      appBar: AppBar(
        title: Text(
          'About ISTE NITK',
          style: TextStyle(
            color: isDarkMode ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: isDarkMode ? const Color(0xFF1F1F1F) : Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: isDarkMode ? Colors.white : Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Indian Society for Technical Education (ISTE) NITK',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              Divider(thickness: 2, color: isDarkMode ? Colors.white : Colors.black),
              const SizedBox(height: 12),
              Text(
                'ISTE NITK is the largest and oldest technical club at NITK, dedicated to fostering innovation, research, and professional development.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: isDarkMode ? Colors.white70 : Colors.black87),
              ),
              const SizedBox(height: 20),
              Text(
                'Special Interest Groups (SIGs)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              Divider(thickness: 2, color: isDarkMode ? Colors.white : Colors.black),
              const SizedBox(height: 12),
              _buildSIGItem('Create', 'Software development, UI/UX, and product design', isDarkMode),
              _buildSIGItem('Crypt', 'Cybersecurity, cryptography, and ethical hacking', isDarkMode),
              _buildSIGItem('Chronical', 'Technical writing, documentation, and research', isDarkMode),
              _buildSIGItem('Credit', 'Finance, fintech, and investment technology', isDarkMode),
              _buildSIGItem('Charge', 'Electronics, IoT, and embedded systems', isDarkMode),
              _buildSIGItem('Clutch', 'Motorsport technology and mechanical engineering', isDarkMode),
              _buildSIGItem('Catalyst', 'Chemical engineering, process design, and sustainability', isDarkMode),
              _buildSIGItem('Concrete', 'Civil engineering, construction technology, and urban planning', isDarkMode),
              const SizedBox(height: 20),
              Text(
                'About the ISTE NITK App',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'The ISTE NITK app is a one-stop platform for all things ISTE, offering seamless access to events, projects, and resources.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: isDarkMode ? Colors.white70 : Colors.black87),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSIGItem(String title, String description, bool isDarkMode) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: isDarkMode ? Colors.white70 : Colors.black87),
          ),
          Divider(color: isDarkMode ? Colors.white54 : Colors.black54),
        ],
      ),
    );
  }
}
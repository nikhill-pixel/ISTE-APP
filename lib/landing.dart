import 'package:flutter/material.dart';
import 'package:iste_application/change.dart';
import 'package:iste_application/calendar_page.dart';
import 'Profile_page.dart';
import 'Team_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';
import 'aboutpage.dart';
import 'main.dart';

class ISTEApp extends StatefulWidget {
  const ISTEApp({super.key});

  @override
  _ISTEAppState createState() => _ISTEAppState();
}

class _ISTEAppState extends State<ISTEApp> {
  int currentIndex = 0;
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    final currentPages = [
      LandingPage(isDarkMode: isDarkMode),
      CalendarPage(isDarkMode: isDarkMode),
      TeamPage(isDarkMode: isDarkMode),
      ProfilePage(isDarkMode: isDarkMode),
      MoreOptionsPage(isDarkMode: isDarkMode)
    ];
    return Scaffold(
      backgroundColor: isDarkMode ? const Color(0xFF131318) : Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Center(
          child: Text(
            'ISTE : NITK',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.more_vert_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MoreOptionsPage(isDarkMode: isDarkMode),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              isDarkMode ? Icons.light_mode : Icons.dark_mode,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                isDarkMode = !isDarkMode;
              });
            },
          ),
        ],
      ),
      body: currentPages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: isDarkMode ? const Color(0xFF131318) : Colors.white,
        selectedItemColor: isDarkMode ? Colors.white : Colors.black,
        unselectedItemColor: isDarkMode ? Colors.white70 : Colors.black54,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Team',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


class MoreOptionsPage extends StatelessWidget {
  final bool isDarkMode;
  const MoreOptionsPage({super.key, required this.isDarkMode});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      // The AuthGate will automatically redirect to the SignInScreen
      if (!context.mounted) return;
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const AuthGate()),
            (route) => false,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error signing out. Please try again.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? const Color(0xFF131318) : Colors.white,
      appBar: AppBar(
        title: Text(
          'More Options',
          style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
        ),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(
          color: isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      body: ListView(
        children: [
          Divider(color: isDarkMode ? Colors.white : Colors.black),
          ListTile(
            leading: Icon(Icons.school, color: isDarkMode ? Colors.white : Colors.black),
            title: Text('ISTE', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
            onTap: () => _launchURL('https://iste.nitk.ac.in/#/'),
          ),
          Divider(color: isDarkMode ? Colors.white : Colors.black),
          ListTile(
            leading: Icon(Icons.female, color: isDarkMode ? Colors.white : Colors.black),
            title: Text('ISTE She', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
            onTap: () => _launchURL('https://iste.nitk.ac.in/#/she'),
          ),
          Divider(color: isDarkMode ? Colors.white : Colors.black),
          ListTile(
            leading: Icon(Icons.article, color: isDarkMode ? Colors.white : Colors.black),
            title: Text('ISTE Blog', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
            onTap: () => _launchURL('https://istenitk.wordpress.com/'),
          ),
          Divider(color: isDarkMode ? Colors.white : Colors.black),
          ListTile(
            leading: Icon(Icons.info, color: isDarkMode ? Colors.white : Colors.black),
            title: Text('About ISTE', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
            onTap: () {
              Navigator.push(context, AboutISTEPage.route(isDarkMode: isDarkMode));
            },
          ),
          Divider(color: isDarkMode ? Colors.white : Colors.black),
          ListTile(
            leading: Icon(
              Icons.lock,
              color: isDarkMode ? Colors.white : Colors.black,
            ),
            title: Text(
              'Change Password',
              style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChangePasswordScreen(isDarkMode: isDarkMode),
                ),
              );
            },
          ),
          Divider(color: isDarkMode ? Colors.white : Colors.black),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: isDarkMode ? Colors.white : Colors.black,
            ),
            title: Text(
              'Log Out',
              style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
            ),
            onTap: () {
              _signOut(context);
            },
          ),
          Divider(color: isDarkMode ? Colors.white : Colors.black),
        ],
      ),
    );
  }
}
class LandingPage extends StatefulWidget {
  final bool isDarkMode;
  const LandingPage({super.key, required this.isDarkMode});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String userName = '';
  String userRole = '';
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    try {
      // Get current user
      final User? currentUser = FirebaseAuth.instance.currentUser;

      if (currentUser != null) {
        final DocumentSnapshot userDoc = await FirebaseFirestore.instance
            .collection('users')
            .doc(currentUser.uid)
            .get();

        if (userDoc.exists) {
          setState(() {
            userName = userDoc.get('name') ?? '';
            userRole = userDoc.get('sig') ?? '';
            isLoading = false;
          });
        }
      }
    } catch (e) {
      print('Error fetching user data: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: widget.isDarkMode ? Colors.black : Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  isLoading
                      ? CircularProgressIndicator(
                    color: widget.isDarkMode ? Colors.white : Colors.black,
                  )
                      : Column(
                    children: [
                      Text(
                        userName.toUpperCase(),
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: widget.isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                      Text(
                        userRole.toUpperCase(),
                        style: TextStyle(
                          fontSize: 18,
                          color: widget.isDarkMode ? Colors.white70 : Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Upcoming Events',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: widget.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(height: 16),
            EventBox(
              title: 'Dec 2: ISTE Meet the new recruits!',
              isDarkMode: widget.isDarkMode,
            ),
            EventBox(
              title: 'Dec 5: ISTE CRYPT : Meet\'n Greet',
              isDarkMode: widget.isDarkMode,
            ),
            SizedBox(height: 32),
            Text(
              'Notifications',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: widget.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(height: 16),
            NotificationBox(
              sender: 'Ansh',
              message: 'Be there on time!',
              isDarkMode: widget.isDarkMode,
            ),
            NotificationBox(
              sender: 'Harsh',
              message: 'RR on December 6 bois!',
              isDarkMode: widget.isDarkMode,
            ),
          ],
        ),
      ),
    );
  }
}

class EventBox extends StatelessWidget {
  final String title;
  final bool isDarkMode;

  const EventBox({super.key, required this.title, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    // Extract date portion from the title (assuming format "MMM D: Event Title")
    final RegExp datePattern = RegExp(r'^([A-Za-z]+ \d+):(.*)$');
    final match = datePattern.firstMatch(title);

    final String dateText = match?.group(1) ?? '';
    final String eventText = match?.group(2)?.trim() ?? title;

    return InkWell(
      onTap: () {
        _showEventDetails(context);
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 8.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2.0),
          color: isDarkMode ? Colors.grey[800] : Colors.grey[300],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            // Event icon
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.event,
                color: Colors.white,
                size: 24.0,
              ),
            ),
            SizedBox(width: 16.0),
            // Event content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Date with highlight
                  if (dateText.isNotEmpty)
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        color: isDarkMode ? Colors.blue[700] : Colors.blue[100],
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Text(
                        dateText,
                        style: TextStyle(
                          color: isDarkMode ? Colors.white : Colors.blue[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  SizedBox(height: 8.0),
                  // Event title
                  Text(
                    eventText,
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                      fontSize: 16.0,
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

  void _showEventDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: isDarkMode ? const Color(0xFF1E1E1E) : Colors.white,
          title: Text(
            'Event Details',
            style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
          ),
          content: Text(
            title,
            style: TextStyle(
                color: isDarkMode ? Colors.white70 : Colors.black87),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Close',
                style: TextStyle(
                    color: isDarkMode ? Colors.blue : Colors.black),
              ),
            ),
          ],
        );
      },
    );
  }
}

class NotificationBox extends StatelessWidget {
  final String sender;
  final String message;
  final bool isDarkMode;

  const NotificationBox({
    super.key,
    required this.sender,
    required this.message,
    required this.isDarkMode,
  });

  // Generate a consistent color based on sender name
  Color _generateColorFromName(String name) {
    // Create a hash from the name to get a consistent color
    int hash = 0;
    for (int i = 0; i < name.length; i++) {
      hash = name.codeUnitAt(i) + ((hash << 5) - hash);
    }

    // Create a vibrant color (avoid too light or too dark colors)
    int r = ((hash & 0xFF0000) >> 16) % 200 + 40;
    int g = ((hash & 0x00FF00) >> 8) % 200 + 40;
    int b = (hash & 0x0000FF) % 200 + 40;

    return Color.fromRGBO(r, g, b, 1);
  }

  @override
  Widget build(BuildContext context) {
    final Color avatarColor = _generateColorFromName(sender);
    // Get a good contrast color for text
    final bool isAvatarDark = (avatarColor.red * 0.299 + avatarColor.green * 0.587 + avatarColor.blue * 0.114) < 128;
    final Color textColor = isAvatarDark ? Colors.white : Colors.black;

    return InkWell(
      onTap: () {
        _showNotificationDetails(context);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2.0),
          color: isDarkMode ? Colors.grey[800] : Colors.grey[300],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: avatarColor,
              ),
              child: Center(
                child: Text(
                  sender.contains(' ')
                      ? sender.split(' ').map((word) => word[0]).take(2).join('')
                      : sender[0],
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Sender name in bold
                  Text(
                    sender,
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  // Message content
                  Text(
                    message,
                    style: TextStyle(
                      color: isDarkMode ? Colors.white70 : Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 6),
                  // Timestamp or notification indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showNotificationDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: isDarkMode ? const Color(0xFF1E1E1E) : Colors.white,
          title: Text(
            'Message from $sender',
            style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
          ),
          content: Text(
            message,
            style: TextStyle(color: isDarkMode ? Colors.white70 : Colors.black87),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Close',
                style: TextStyle(color: isDarkMode ? Colors.blue : Colors.black),
              ),
            ),
          ],
        );
      },
    );
  }
}
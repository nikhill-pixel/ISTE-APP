import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:iste_application/landing.dart';

class CalendarPage extends StatefulWidget {
  final bool isDarkMode;
  const CalendarPage({super.key, required this.isDarkMode});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  // Remove this line as it's causing an error - we should use widget.isDarkMode instead
  // final bool isDarkMode;
  // const _CalendarPageState({super.key, required this.isDarkMode});

  final Map<DateTime, List<String>> _events = {};
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  bool _isAnimating = false;

  @override
  Widget build(BuildContext context) {
    final selectedEvents = _events[_selectedDay] ?? [];
    // Get theme colors based on dark mode
    final backgroundColor = widget.isDarkMode ? Colors.grey[900] : Colors.white;
    final textColor = widget.isDarkMode ? Colors.white : Colors.black;
    final calendarBackgroundColor = widget.isDarkMode ? Colors.grey[800] : Colors.white;
    final selectedDayColor = widget.isDarkMode ? Colors.redAccent : Colors.red;
    final todayColor = widget.isDarkMode ? Colors.tealAccent : Colors.teal;
    final headerColor = widget.isDarkMode ? Colors.white : Colors.black87;
    final weekdayColor = widget.isDarkMode ? Colors.grey[400] : Colors.grey[600];

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Club Calendar',
          style: TextStyle(color: widget.isDarkMode ? Colors.white : null),
        ),
        centerTitle: true,
        backgroundColor: widget.isDarkMode ? Colors.grey[850] : null,
        iconTheme: IconThemeData(
          color: widget.isDarkMode ? Colors.white : null,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.lock),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdminPage(
                    events: _events,
                    isDarkMode: widget.isDarkMode,
                    onUpdate: (updatedEvents) {
                      setState(() {
                        _events.clear();
                        _events.addAll(updatedEvents);
                      });
                      Navigator.pop(context); // Refresh UI on return
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime(2024, 1, 1),
            lastDay: DateTime(2028, 12, 31),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = DateTime(selectedDay.year, selectedDay.month, selectedDay.day);
                _focusedDay = focusedDay;
                _isAnimating = true;
              });
              Future.delayed(const Duration(milliseconds: 300), () {
                setState(() {
                  _isAnimating = false;
                });
              });
              print("Loaded events for $_selectedDay: ${_events[_selectedDay]}");
            },
            eventLoader: (day) {
              final normalizedDate = DateTime(day.year, day.month, day.day);
              return _events[normalizedDate] ?? [];
            },
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: todayColor,
                shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color: selectedDayColor,
                shape: BoxShape.circle,
              ),
              // Dark mode styles
              defaultTextStyle: TextStyle(color: textColor),
              weekendTextStyle: TextStyle(color: widget.isDarkMode ? Colors.redAccent[100] : Colors.red),
              outsideTextStyle: TextStyle(color: widget.isDarkMode ? Colors.grey[600] : Colors.grey[400]),
              markersMaxCount: 3,
              markersAnchor: 1.2,
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              titleTextStyle: TextStyle(color: headerColor),
              leftChevronIcon: Icon(Icons.chevron_left, color: headerColor),
              rightChevronIcon: Icon(Icons.chevron_right, color: headerColor),
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(color: weekdayColor),
              weekendStyle: TextStyle(color: widget.isDarkMode ? Colors.redAccent[100] : Colors.red),
            ),
            calendarBuilders: CalendarBuilders(
              markerBuilder: (context, day, events) {
                if (events.isNotEmpty) {
                  return Positioned(
                    right: 1,
                    bottom: 1,
                    child: Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.isDarkMode ? Colors.tealAccent : Colors.teal,
                      ),
                      width: 5,
                      height: 5,
                    ),
                  );
                }
                return null;
              },
            ),
          ),
          Expanded(
            child: Container(
              color: backgroundColor,
              child: _isAnimating
                  ? Center(child: CircularProgressIndicator(color: todayColor))
                  : selectedEvents.isEmpty
                  ? Center(child: Text('No events for this day.',
                style: TextStyle(color: textColor),
              ))
                  : ListView.builder(
                itemCount: selectedEvents.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(selectedEvents[index],
                      style: TextStyle(color: textColor),
                    ),
                    tileColor: widget.isDarkMode ? Colors.grey[850] : null,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AdminPage extends StatefulWidget {
  final Map<DateTime, List<String>> events;
  final Function(Map<DateTime, List<String>>) onUpdate;
  final bool isDarkMode;

  const AdminPage({super.key, required this.events, required this.onUpdate, required this.isDarkMode});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final TextEditingController _eventController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  final String _adminPassword = "admin123";
  bool _isAuthenticated = false;

  void _authenticate(String password) {
    if (password == _adminPassword) {
      setState(() {
        _isAuthenticated = true;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid Password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // Get theme colors based on dark mode
    final backgroundColor = widget.isDarkMode ? Colors.grey[900] : Colors.white;
    final textColor = widget.isDarkMode ? Colors.white : Colors.black;
    final headerColor = widget.isDarkMode ? Colors.white : Colors.black87;
    final weekdayColor = widget.isDarkMode ? Colors.grey[400] : Colors.grey[600];
    final inputBorderColor = widget.isDarkMode ? Colors.grey[400] : Colors.grey[600];

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Admin - Assign Events',
          style: TextStyle(color: widget.isDarkMode ? Colors.white : null),
        ),
        backgroundColor: widget.isDarkMode ? Colors.grey[850] : null,
        iconTheme: IconThemeData(
          color: widget.isDarkMode ? Colors.white : null,
        ),
      ),
      body: _isAuthenticated
          ? Column(
        children: [
          TableCalendar(
            firstDay: DateTime(2024, 1, 1),
            lastDay: DateTime(2028, 12, 31),
            focusedDay: _selectedDate,
            selectedDayPredicate: (day) => isSameDay(_selectedDate, day),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDate = DateTime(selectedDay.year, selectedDay.month, selectedDay.day);
              });
            },
            calendarFormat: CalendarFormat.month,
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: widget.isDarkMode ? Colors.tealAccent : Colors.teal,
                shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color: widget.isDarkMode ? Colors.redAccent : Colors.red,
                shape: BoxShape.circle,
              ),
              // Dark mode styles
              defaultTextStyle: TextStyle(color: textColor),
              weekendTextStyle: TextStyle(color: widget.isDarkMode ? Colors.redAccent[100] : Colors.red),
              outsideTextStyle: TextStyle(color: widget.isDarkMode ? Colors.grey[600] : Colors.grey[400]),
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              titleTextStyle: TextStyle(color: headerColor),
              leftChevronIcon: Icon(Icons.chevron_left, color: headerColor),
              rightChevronIcon: Icon(Icons.chevron_right, color: headerColor),
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(color: weekdayColor),
              weekendStyle: TextStyle(color: widget.isDarkMode ? Colors.redAccent[100] : Colors.red),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _eventController,
              decoration: InputDecoration(
                labelText: 'Event Name',
                labelStyle: TextStyle(color: textColor.withOpacity(0.7)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: inputBorderColor!),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.isDarkMode ? Colors.tealAccent : Colors.teal),
                ),
              ),
              style: TextStyle(color: textColor),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_eventController.text.isNotEmpty) {
                final normalizedDate = DateTime(_selectedDate.year, _selectedDate.month, _selectedDate.day);
                setState(() {
                  widget.events.putIfAbsent(normalizedDate, () => []);
                  widget.events[normalizedDate]!.add(_eventController.text);
                  widget.onUpdate(widget.events);
                });
                print("Event added on $normalizedDate: ${widget.events[normalizedDate]}");
                _eventController.clear();
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: widget.isDarkMode ? Colors.tealAccent : Colors.teal,
              foregroundColor: widget.isDarkMode ? Colors.black : Colors.white,
            ),
            child: const Text('Add Event'),
          ),
        ],
      )
          : Container(
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter Admin Password', style: TextStyle(color: textColor)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                obscureText: true,
                onSubmitted: _authenticate,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: inputBorderColor!),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: widget.isDarkMode ? Colors.tealAccent : Colors.teal),
                  ),
                ),
                style: TextStyle(color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class InteractiveWidgetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('System Reservations'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RoomBookingWidget(), // Room Booking
                ),
              );
            },
            child: Text('Room Booking (Widget 50)'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      AirlineTicketWidget(), // Airline Ticket Booking
                ),
              );
            },
            child: Text('Airline Ticket Booking (Widget 51)'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReservationWidget(1), // Reservation 1
                ),
              );
            },
            child: Text('Reservation 1 (Widget 52)'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReservationWidget(2), // Reservation 2
                ),
              );
            },
            child: Text('Reservation 2 (Widget 53)'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReservationWidget(3), // Reservation 3
                ),
              );
            },
            child: Text('Reservation 3 (Widget 54)'),
          ),
        ],
      ),
    );
  }
}

class RoomBookingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room Booking (Widget 50)'),
      ),
      body: Center(
        child: ReservationForm(reservationType: 'Room Booking'),
      ),
    );
  }
}

class AirlineTicketWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Airline Ticket Booking (Widget 51)'),
      ),
      body: Center(
        child: ReservationForm(reservationType: 'Airline Ticket Booking'),
      ),
    );
  }
}

class ReservationWidget extends StatelessWidget {
  final int reservationNumber;

  ReservationWidget(this.reservationNumber);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reservation $reservationNumber (Widget 52/53/54)'),
      ),
      body: Center(
        child:
            ReservationForm(reservationType: 'Reservation $reservationNumber'),
      ),
    );
  }
}

class ReservationForm extends StatefulWidget {
  final String reservationType;

  ReservationForm({required this.reservationType});

  @override
  _ReservationFormState createState() => _ReservationFormState();
}

class _ReservationFormState extends State<ReservationForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name = '';
  String _date = '';
  String _details = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.reservationType, style: TextStyle(fontSize: 20)),
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a name';
                }
                return null;
              },
              onSaved: (value) {
                _name = value ?? '';
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Date'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a date';
                }
                return null;
              },
              onSaved: (value) {
                _date = value ?? '';
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Details'),
              maxLines: 3,
              onSaved: (value) {
                _details = value ?? '';
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Handle form submission, e.g., save data to a database
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Reservation submitted for ${_name} on ${_date}'),
                    ),
                  );
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

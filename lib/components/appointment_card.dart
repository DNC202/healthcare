import 'package:flutter/material.dart';
import 'package:healthcare/utils/config.dart';

class AppointmentCard extends StatefulWidget {
  const AppointmentCard({super.key});

  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Config.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/doctor3.jpg'), // insert image here
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Dr Richard Tan",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Dental",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Config.spaceSmall,
              // Schedule here
              const ScheduleCard(),
              Config.spaceSmall,
              // action button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent.shade200,
                      ),
                      child: const Text(
                        "Completed",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Schedule card
class ScheduleCard extends StatefulWidget {
  const ScheduleCard({super.key});

  @override
  State<ScheduleCard> createState() => _ScheduleCardState();
}

class _ScheduleCardState extends State<ScheduleCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          Icon(
            Icons.calendar_today,
            color: Config.primaryColor,
            size: 15,
          ),
          SizedBox(width: 5),
          Text(
            "Monday, 11/28/2022",
            style: TextStyle(
              color: Config.primaryColor,
            ),
          ),
          SizedBox(width: 20),
          Icon(
            Icons.access_alarm,
            color: Config.primaryColor,
            size: 17,
          ),
          SizedBox(width: 5),
          Flexible(
            child: Text(
              "2:00 PM",
              style: TextStyle(
                color: Config.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Appointment card is DONE
// information will be replaced by API 
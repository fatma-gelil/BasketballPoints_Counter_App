import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

// Stateful widget
class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

// State widget/object
class _PointsCounterState extends State<PointsCounter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  void addOnePoint() {
    //
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Points Counter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamApoints',
                      style: const TextStyle(fontSize: 150),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          //disabledIconColor:  Colors.orange,
                          backgroundColor: Colors.orange,
                          //foregroundColor: Colors.black,
                          //fixedSize:Size(200, 100) ,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamApoints = teamApoints + 10;
                        });
                        //print(teamApoints);
                      },
                      child: const Text(
                        'Add 10 Point',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          //disabledIconColor:  Colors.orange,
                          backgroundColor: Colors.orange,
                          //foregroundColor: Colors.black,
                          //fixedSize:Size(200, 100) ,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          if (teamApoints == 0) {
                            teamApoints = 0;
                          } else {
                            teamApoints = teamApoints - 10;
                          }
                        });
                      },
                      child: const Text(
                        'Remove 10 Points',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Color.fromARGB(255, 193, 189, 189),
                    thickness: 2,
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamBpoints',
                      style: const TextStyle(fontSize: 150),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          //disabledIconColor:  Colors.orange,
                          backgroundColor: Colors.orange,
                          //foregroundColor: Colors.black,
                          //fixedSize:Size(200, 100) ,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBpoints = teamBpoints + 10;
                        });
                      },
                      child: const Text(
                        'Add 10 Point',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          //disabledIconColor:  Colors.orange,
                          backgroundColor: Colors.orange,
                          //foregroundColor: Colors.black,
                          //fixedSize:Size(200, 100) ,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          if (teamBpoints == 0) {
                            teamBpoints = 0;
                          } else {
                            teamBpoints = teamBpoints - 10;
                          }
                        });
                      },
                      child: const Text(
                        'Remove 10 point',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  //disabledIconColor:  Colors.orange,
                  backgroundColor: Colors.orange,
                  //foregroundColor: Colors.black,
                  //fixedSize:Size(200, 100) ,
                  minimumSize: const Size(150, 50)),
              onPressed: () {
                setState(() {
                  teamApoints = teamBpoints = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

import 'package:basketball_points_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_points_counter_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });
  int teamApoints = 0;
  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        // used when you don't need to return a new ui
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            centerTitle: true,
            title: const Text(
              'Points Counter',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                        '${BlocProvider.of<CounterCubit>(context).teamApoints}',
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
                          BlocProvider.of<CounterCubit>(context)
                              .addTeamApoints(team: 'A', buttonNumber: 1);
                        },
                        child: const Text(
                          'Add 1 Point',
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
                          BlocProvider.of<CounterCubit>(context)
                              .addTeamApoints(team: 'A', buttonNumber: 2);
                        },
                        child: const Text(
                          'Add 2 Points',
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
                          BlocProvider.of<CounterCubit>(context)
                              .addTeamApoints(team: 'A', buttonNumber: 3);
                        },
                        child: const Text(
                          'Add 3 Points',
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
                        '${BlocProvider.of<CounterCubit>(context).teamBpoints}',
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
                          BlocProvider.of<CounterCubit>(context)
                              .addTeamApoints(team: 'B', buttonNumber: 1);
                        },
                        child: const Text(
                          'Add 1 Point',
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
                          BlocProvider.of<CounterCubit>(context)
                              .addTeamApoints(team: 'B', buttonNumber: 2);
                        },
                        child: const Text(
                          'Add 2 Points',
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
                          BlocProvider.of<CounterCubit>(context)
                              .addTeamApoints(team: 'B', buttonNumber: 3);
                        },
                        child: const Text(
                          'Add 3 Points',
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
                  BlocProvider.of<CounterCubit>(context).resetCounter();
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}

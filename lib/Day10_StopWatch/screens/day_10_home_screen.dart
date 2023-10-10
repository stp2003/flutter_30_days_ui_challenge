import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Day10HomeScreen extends StatefulWidget {
  const Day10HomeScreen({super.key});

  @override
  State<Day10HomeScreen> createState() => _Day10HomeScreenState();
}

class _Day10HomeScreenState extends State<Day10HomeScreen> {
  //*** logic ->
  int seconds = 0, minutes = 0, hours = 0;
  String digitSeconds = "00", digitMinutes = "00", digitHours = "00";
  Timer? timer;
  bool started = false;

  List laps = [];

  //*** stop timer function ->
  void stop() {
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  //*** reset function ->
  void reset() {
    timer!.cancel();
    setState(() {
      seconds = 0;
      minutes = 0;
      hours = 0;

      digitSeconds = "00";
      digitMinutes = "00";
      digitHours = "00";

      started = false;
    });
  }

  //*** adding lapses ->
  void addLapses() {
    String lap = "$digitHours:$digitMinutes:$digitSeconds";
    setState(() {
      laps.add(lap);
    });
  }

  //*** for deleting lapses ->
  void deleteLapses() {
    setState(() {
      laps.clear();
    });
  }

  //*** start timer function ->
  void start() {
    started = true;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      int localSeconds = seconds + 1;
      int localMinutes = minutes;
      int localHours = hours;

      if (localSeconds > 59) {
        if (localMinutes > 59) {
          localHours++;
          localMinutes = 0;
        } else {
          localMinutes++;
          localSeconds = 0;
        }
      }

      setState(() {
        seconds = localSeconds;
        minutes = localMinutes;
        hours = localHours;

        digitSeconds = (seconds >= 10) ? "$seconds" : "0$seconds";
        digitHours = (hours >= 10) ? "$hours" : "0$hours";
        digitMinutes = (minutes >= 10) ? "$minutes" : "0$minutes";
      });
    });
  }

  //*** To hide top status bar ->
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    super.dispose();
  }

  //*** Build function ->
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E0961),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "Stop Watch Flutter",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'poppins_bold',
                    letterSpacing: 0.8,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),

              //*** Timer ->
              Center(
                child: Text(
                  "$digitHours:$digitMinutes:$digitSeconds",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 75.0,
                    fontFamily: 'poppins_bold',
                    letterSpacing: 0.8,
                  ),
                ),
              ),

              //*** Container for time lapses ->
              Container(
                height: 400.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF1D3743),
                  borderRadius: BorderRadius.circular(12.0),
                ),

                //*** adding a list builder for lapses ->
                child: ListView.builder(
                    itemCount: laps.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lap: ${index + 1}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontFamily: 'poppins_medium',
                                letterSpacing: 0.8,
                              ),
                            ),
                            Text(
                              "${laps[index]}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontFamily: 'poppins_medium',
                                letterSpacing: 0.8,
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 20.0),

              //*** Start Button ->
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RawMaterialButton(
                      onPressed: () {
                        (!started) ? start() : stop();
                      },
                      shape: const StadiumBorder(
                        side: BorderSide(color: Colors.greenAccent),
                      ),
                      child: Text(
                        (!started) ? "Start" : "Paused",
                        style: const TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontFamily: 'poppins_bold',
                          letterSpacing: 0.8,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),

                  // Flag Icon
                  IconButton(
                    onPressed: () {
                      addLapses();
                    },
                    color: Colors.white,
                    icon: const Icon(Icons.flag),
                  ),
                  const SizedBox(width: 8.0),

                  //*** Reset Button ->
                  Expanded(
                    child: RawMaterialButton(
                      onPressed: () {
                        reset();
                        deleteLapses();
                      },
                      fillColor: Colors.cyanAccent,
                      shape: const StadiumBorder(
                        side: BorderSide(color: Colors.purple),
                      ),
                      child: const Text(
                        "Reset",
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'poppins_bold',
                          letterSpacing: 0.8,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4.0),
            ],
          ),
        ),
      ),
    );
  }
}

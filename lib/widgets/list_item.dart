import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItemInProgress extends StatelessWidget {
  final String startTime;
  final String duration;
  final String services;
  final String clientName;
  final String startEnd;

  const ListItemInProgress({
    super.key,
    required this.startTime,
    required this.duration,
    required this.services,
    required this.clientName,
    required this.startEnd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(5, 119, 71, 1),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromRGBO(5, 119, 71, 1),
                            width: 1.25,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      startTime,
                      style: GoogleFonts.lexend(
                        color: const Color.fromRGBO(5, 119, 71, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Text(
                  duration,
                  style: GoogleFonts.lexend(
                    color: const Color.fromRGBO(107, 114, 128, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(17, 24, 39, 1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color.fromRGBO(55, 65, 81, 1),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    services,
                    style: GoogleFonts.lexend(
                      color: const Color.fromRGBO(254, 254, 254, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    clientName,
                    style: GoogleFonts.lexend(
                      color: const Color.fromRGBO(156, 163, 175, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    startEnd,
                    style: GoogleFonts.lexend(
                      color: const Color.fromRGBO(156, 163, 175, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListItemDefault extends StatelessWidget {
  final String startTime;
  final String duration;
  final String services;
  final String clientName;
  final String startEnd;

  const ListItemDefault({
    super.key,
    required this.startTime,
    required this.duration,
    required this.services,
    required this.clientName,
    required this.startEnd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  startTime,
                  style: GoogleFonts.lexend(
                    color: const Color.fromRGBO(17, 24, 39, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                Text(
                  duration,
                  style: GoogleFonts.lexend(
                    color: const Color.fromRGBO(107, 114, 128, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color.fromRGBO(209, 213, 219, 1),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    services,
                    style: GoogleFonts.lexend(
                      color: const Color.fromRGBO(17, 24, 39, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    clientName,
                    style: GoogleFonts.lexend(
                      color: const Color.fromRGBO(107, 114, 128, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    startEnd,
                    style: GoogleFonts.lexend(
                      color: const Color.fromRGBO(107, 114, 128, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

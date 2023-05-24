import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {Key? key}) : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map((data) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: data["correct_answer"] == data["user_answer"]
                              ? Colors.green[300]
                              : Colors.pink[400],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          ((data["question_index"] as int) + 1).toString(),
                          style: GoogleFonts.lato(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                data["question"] as String,
                                style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                data["user_answer"] as String,
                                style: TextStyle(
                                  color: Colors.pink[400],
                                ),
                              ),
                              Text(data["correct_answer"] as String,style: GoogleFonts.lato(
                                  color: Colors.green[300],
                                ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;
 
 @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            '/Users/atharv07/Desktop/latestflutter/quizapp/assets/images/quiz-logo.png',
            width: 300,
            color: Colors.cyan.shade50,
          ),

          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     '/Users/atharv07/Desktop/latestflutter/quizapp/assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 80,
          ),
          Text(
            "Ready to learn flutter?",
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start Quiz")),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactDoctor extends StatelessWidget {
  const ContactDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          width: 326,
          height: 196,
          decoration: BoxDecoration(
            color: const Color(0xffF2F4F7),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color(0xffE4E7EC),
            ),
          ),
          child: Row(
            children: [
              const Expanded(flex: 1, child: SizedBox.shrink()),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Connect with doctors &\n get suggestions',
                      style: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Connect now and get \nexpert insights ',
                      style: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 8),
                      decoration: BoxDecoration(
                          color: const Color(0xff7F56D9),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0XFF7F56D9))),
                      child: Text(
                        'View detail',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: 12,
          child: Image.asset(
            'assets/images/doctor.png',
            width: 110.69,
          ),
        )
      ],
    );
  }
}

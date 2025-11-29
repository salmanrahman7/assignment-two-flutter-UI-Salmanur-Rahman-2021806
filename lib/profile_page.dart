import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Top Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor: Color(0xFF534AD9),
                      child: Text("S", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Welcome back,", style: TextStyle(color: Colors.grey, fontSize: 14)),
                        SizedBox(height: 4),
                        Text("SALMANUR RAHMAN", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                      child: const Icon(Icons.notifications_none),
                    ),
                    Positioned(right: 12, top: 12, child: Container(width: 8, height: 8, decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle))),
                  ],
                )
              ],
            ),
            const SizedBox(height: 30),

            const Text("User Profile", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),

            // Center Avatar
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 15, spreadRadius: 5)],
              ),
              child: const CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xFF534AD9),
                child: Text("SR", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 30),

            // Info Cards
            _buildInfoCard("Name", "SALMANUR RAHMAN"),
            _buildInfoCard("Student ID", "2021806"),
            _buildInfoCard("Email", "2021806@iub.edu.bd"),

            // Bio Card
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.05), blurRadius: 5, spreadRadius: 1)],
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Bio / Story", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 10),
                  const Text(
                    "\"I'm a final-year Computer Science Undergrad at IUB with a knack for solving real-world problems with code. I'm an aspiring Software Engineer driven by curiosity and a desire to build impactful solutions.\"",
                    style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black54, height: 1.5),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "(Note: Students should replace the text above with their own description here!)",
                    style: TextStyle(color: Colors.red[400], fontSize: 12),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String label, String value) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.05), blurRadius: 5, spreadRadius: 1)],
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey, fontSize: 14)),
          const SizedBox(height: 5),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        ],
      ),
    );
  }
}
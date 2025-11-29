import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 10, spreadRadius: 2)],
                      ),
                      child: const Icon(Icons.notifications_none, color: Colors.black87),
                    ),
                    Positioned(
                      right: 12,
                      top: 12,
                      child: Container(width: 8, height: 8, decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle)),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),

            // Balance Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF534AD9), // Indigo/Blue color
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: const Color(0xFF534AD9).withOpacity(0.4), blurRadius: 10, offset: const Offset(0, 5))
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Total Balance", style: TextStyle(color: Colors.white70, fontSize: 16)),
                      Icon(Icons.account_balance_wallet_outlined, color: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text("\$8,945.32", style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Savings: \$5,500", style: TextStyle(color: Colors.white70)),
                      Text("Last 30 days: +\$300 →", style: TextStyle(color: Colors.white70)),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),

            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildActionButton(Icons.bolt, "Transfer"),
                _buildActionButton(Icons.description_outlined, "Pay Bills"),
                _buildActionButton(Icons.link, "Invest"),
              ],
            ),
            const SizedBox(height: 30),

            // Recent Transactions
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Recent Transactions", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                TextButton(onPressed: () {}, child: const Text("View All", style: TextStyle(color: Color(0xFF534AD9)))),
              ],
            ),
            const SizedBox(height: 10),

            // Transaction List
            _buildTransactionItem(Icons.movie, "Netflix Subscription", "Entertainment • Today", "-\$19.99", Colors.red),
            _buildTransactionItem(Icons.local_cafe, "Coffee Shop", "Food & Drink • Today", "-\$4.50", Colors.red),
            _buildTransactionItem(Icons.attach_money, "Salary Deposit", "Income • Yesterday", "+\$3500.00", Colors.green),
            _buildTransactionItem(Icons.shopping_cart, "Grocery Store", "Shopping • Yesterday", "-\$55.80", Colors.red),
            _buildTransactionItem(Icons.shopping_bag, "Amazon Purchase", "Shopping • 2 days ago", "-\$120.45", Colors.red),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.05), blurRadius: 10, spreadRadius: 1)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: const Color(0xFF534AD9).withOpacity(0.1), shape: BoxShape.circle),
            child: Icon(icon, color: const Color(0xFF534AD9)),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildTransactionItem(IconData icon, String title, String subtitle, String amount, Color amountColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.grey[100], shape: BoxShape.circle),
            child: Icon(icon, color: Colors.grey[700]),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 4),
                Text(subtitle, style: TextStyle(color: Colors.grey[500], fontSize: 12)),
              ],
            ),
          ),
          Text(amount, style: TextStyle(color: amountColor, fontWeight: FontWeight.bold, fontSize: 16)),
        ],
      ),
    );
  }
}
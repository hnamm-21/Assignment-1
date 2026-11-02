import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Center',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F7FB),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2878E8)),
        useMaterial3: true,
      ),
      home: const CenterPage(),
    );
  }
}

class CenterPage extends StatelessWidget {
  const CenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 18, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Center',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 18),
              _buildProfileCard(),
              const SizedBox(height: 22),
              _buildShortcuts(),
              const SizedBox(height: 24),
              _buildSettingCard(
                icon: Icons.location_on_outlined,
                color: const Color(0xFF3678E8),
                title: 'Address',
                subtitle: 'Manage your saved locations',
              ),
              _buildSettingCard(
                icon: Icons.lock_outline,
                color: const Color(0xFFE45C9A),
                title: 'Privacy',
                subtitle: 'Review your privacy options',
              ),
              _buildSettingCard(
                icon: Icons.tune,
                color: const Color(0xFFE8A83A),
                title: 'General',
                subtitle: 'Set your app preferences',
              ),
              _buildSettingCard(
                icon: Icons.notifications_none,
                color: const Color(0xFF39AFAE),
                title: 'Notification',
                subtitle: 'Choose what you want to hear about',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF2878E8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/hmamm.jpeg'),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hammam Awawdeh',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Welcome back',
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              _ProfileNumber(number: '846', label: 'Collect'),
              _ProfileNumber(number: '51', label: 'Attention'),
              _ProfileNumber(number: '267', label: 'Track'),
              _ProfileNumber(number: '39', label: 'Coupons'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildShortcuts() {
    return const Row(
      children: [
        _Shortcut(icon: Icons.account_balance_wallet_outlined, label: 'Wallet'),
        _Shortcut(icon: Icons.local_shipping_outlined, label: 'Delivery'),
        _Shortcut(icon: Icons.chat_bubble_outline, label: 'Message'),
        _Shortcut(icon: Icons.payments_outlined, label: 'Service'),
      ],
    );
  }

  Widget _buildSettingCard({
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 21,
            backgroundColor: color.withValues(alpha: 0.13),
            child: Icon(icon, color: color, size: 23),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color(0xFF8A9099),
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: Color(0xFF9AA1AA)),
        ],
      ),
    );
  }
}

class _ProfileNumber extends StatelessWidget {
  const _ProfileNumber({required this.number, required this.label});

  final String number;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            number,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(color: Colors.white70, fontSize: 10),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class _Shortcut extends StatelessWidget {
  const _Shortcut({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white,
            child: Icon(icon, color: const Color(0xFF343A40), size: 22),
          ),
          const SizedBox(height: 7),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  // Launch Email
  void _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'ha20720054@gmail.com',
      query: 'subject=Support Request&body=Write your message here...',
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri, mode: LaunchMode.externalApplication);
    }
  }

  // Launch WhatsApp
  void _launchWhatsApp() async {
    final Uri whatsappUri = Uri.parse("https://wa.me/201005214875");
    if (await canLaunchUrl(whatsappUri)) {
      await launchUrl(whatsappUri, mode: LaunchMode.externalApplication);
    }
  }

  // Contact Dialog
  void _showContactDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Contact Support\nتواصل مع الدعم"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: _launchEmail,
              child: const Text(
                "📧 Email: ha20720054@gmail.com",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: _launchWhatsApp,
              child: const Text(
                "💬 WhatsApp: 01005214875",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            child: const Text("Close\nإغلاق"),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help & Support", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple.shade700,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // English Section (On top)
          Text(
            "Welcome! If you face any issues while using the smart watch or the mobile app, we’re here to help.",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left, // English text aligned left
          ),
          SizedBox(height: 20),
          Text(
            "1. Frequently Asked Questions (FAQ):",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left, // English heading aligned left
          ),
          Text(
            "Find quick answers to the most common questions about setup, notifications, and general usage.",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left, // English text aligned left
          ),
          SizedBox(height: 20),
          Text(
            "2. Contact Support:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left, // English heading aligned left
          ),
          Text(
            "For specific inquiries or technical issues, you can reach out to us through:",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left, // English text aligned left
          ),
          Text(
            "- The in-app support form",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left, // English text aligned left
          ),
          Text(
            "- Email: ha20720054@gmail.com",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left, // English text aligned left
          ),
          Text(
            "- WhatsApp: 01005214875",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left, // English text aligned left
          ),
          SizedBox(height: 20),
          Text(
            "3. User Guide:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left, // English heading aligned left
          ),
          Text(
            "Refer to the 'Top Up' section anytime for a full guide on how to set up and use the watch’s features.",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left, // English text aligned left
          ),
          SizedBox(height: 20),
          Text(
            "4. App Updates:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left, // English heading aligned left
          ),
          Text(
            "Make sure to keep your app updated to the latest version for the best performance and security.",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left, // English text aligned left
          ),
          SizedBox(height: 20),
          Text(
            "We’re always here to support you every step of the way!",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left, // English text aligned left
          ),

          SizedBox(height: 40),

          // Arabic Section (Below English)
          Directionality(
            textDirection: TextDirection.rtl, // Right to left for Arabic
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "مرحبًا! إذا واجهت أي مشكلة أثناء استخدام الساعة الذكية أو التطبيق، إحنا هنا علشان نساعدك.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right, // Arabic text aligned right
                ),
                SizedBox(height: 20),
                Text(
                  "١. الأسئلة الشائعة:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right, // Arabic heading aligned right
                ),
                Text(
                  "هتلاقي إجابات عن أكتر الأسئلة الشائعة حول الاستخدام، الإعدادات، والتنبيهات.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right, // Arabic text aligned right
                ),
                SizedBox(height: 20),
                Text(
                  "٢. التواصل مع الدعم:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right, // Arabic heading aligned right
                ),
                Text(
                  "لو عندك استفسار محدد أو واجهت مشكلة فنية، تقدر تبعتلنا من خلال:",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right, // Arabic text aligned right
                ),
                Text(
                  "- نموذج الدعم داخل التطبيق",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right, // Arabic text aligned right
                ),
                Text(
                  "- أو تبعت إيميل على: ha20720054@gmail.com",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right, // Arabic text aligned right
                ),
                Text(
                  "- أو تتواصل مباشرة عبر واتساب: 01005214875",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right, // Arabic text aligned right
                ),
                SizedBox(height: 20),
                Text(
                  "٣. دليل الاستخدام:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right, // Arabic heading aligned right
                ),
                Text(
                  "ارجع في أي وقت لقسم \"Top Up\" علشان تعرف خطوات التشغيل واستخدام كل ميزة بالتفصيل.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right, // Arabic text aligned right
                ),
                SizedBox(height: 20),
                Text(
                  "٤. تحديثات التطبيق:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right, // Arabic heading aligned right
                ),
                Text(
                  "احرص دايمًا على تحديث التطبيق لأحدث إصدار علشان تضمن أفضل أداء وأعلى درجة أمان.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right, // Arabic text aligned right
                ),
                SizedBox(height: 20),
                Text(
                  "إحنا دايمًا معاك في كل خطوة!",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right, // Arabic text aligned right
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          onPressed: () => _showContactDialog(context),
          icon: const Icon(Icons.support_agent),
          label: const Text(
            "Contact Support\nتواصل مع الدعم",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}


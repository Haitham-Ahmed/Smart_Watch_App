import 'package:flutter/material.dart';

class TopGuideScreen extends StatelessWidget {
  const TopGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top Guide", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // English Section (Aligned Left)
          Text(
            "User Guide for Your Smart Watch",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left, // Align left for English text
          ),
          const SizedBox(height: 16),
          Text(
            "Welcome to your Smart Watch experience — designed to support individuals with hearing impairments by providing smart, real-time sound alerts. Here's how to get started:",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left, // Align left for English text
          ),
          const SizedBox(height: 12),
          Text(
            "1. Getting Started:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          Text(
            "Power on your device and connect it to the mobile app via Bluetooth.",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left,
          ),
          Text(
            "Ensure your watch is fully charged before first use for optimal performance.",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 12),
          Text(
            "2. Smart Alerts:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          Text(
            "The watch detects important sounds such as doorbells, alarms, baby cries, and car horns",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left,
          ),
          Text(
            "vibration pattern and color-coded light notification to help you identify it easily.",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 12),
          Text(
            "3. Notification History:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          Text(
            "You can access a full log of detected sounds at any time through the \"Notifications\" section on your watch or mobile app.",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 12),
          Text(
            "4. Support & Assistance:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          Text(
            "Need help? Visit the “Support” section in the app to get in touch with our team or explore FAQs and troubleshooting tips.",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 12),
          Text(
            "Your safety and independence matter. Let this watch be your companion in navigating the world with more confidence and awareness.",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 32),

          // Arabic Section (Aligned Right)
          Directionality(
            textDirection: TextDirection.rtl, // Set text direction to right-to-left for Arabic
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align everything to the right
              children: [
                Text(
                  "دليل استخدام الساعة الذكية",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right, // Align right for Arabic text
                ),
                const SizedBox(height: 16),
                Text(
                  "مرحبًا بتجربتك مع الساعة الذكية — مصممة لدعم الأفراد من ذوي الإعاقات السمعية من خلال تنبيهات ذكية وفورية للأصوات. إليك كيفية البدء:",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right, // Align right for Arabic text
                ),
                const SizedBox(height: 12),
                Text(
                  "١. بدء الاستخدام:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right, // Align right for Arabic text
                ),
                Text(
                  "قم بتشغيل الجهاز وتوصيله بتطبيق الهاتف المحمول عبر البلوتوث.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right,
                ),
                Text(
                  "تأكد من شحن الساعة بالكامل قبل الاستخدام الأول لضمان أفضل أداء.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(height: 12),
                Text(
                  "٢. التنبيهات الذكية:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right, // Align right for Arabic text
                ),
                Text(
                  "تتعرف الساعة على الأصوات المهمة مثل جرس الباب، الإنذارات، بكاء الأطفال، وأبواق السيارات",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right,
                ),
                Text(
                  "وذلك من خلال اهتزازات ونظام ضوئي بألوان مختلفة لتسهيل التعرف على نوع التنبيه.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(height: 12),
                Text(
                  "٣. سجل التنبيهات:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right, // Align right for Arabic text
                ),
                Text(
                  "يمكنك الوصول إلى سجل كامل بجميع الأصوات التي تم اكتشافها في أي وقت من خلال قسم \"التنبيهات\" في الساعة أو التطبيق.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(height: 12),
                Text(
                  "٤. الدعم والمساعدة:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right, // Align right for Arabic text
                ),
                Text(
                  "تحتاج إلى مساعدة؟ توجه إلى قسم \"الدعم\" في التطبيق للتواصل مع فريقنا أو تصفح الأسئلة الشائعة ونصائح حل المشكلات.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(height: 12),
                Text(
                  "سلامتك واستقلاليتك تهمنا. خليك واثق إن الساعة هتكون شريكك في التنقل بثقة ووعي أكبر.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right, // Align right for Arabic text
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

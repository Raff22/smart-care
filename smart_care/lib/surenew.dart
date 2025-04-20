import 'package:flutter/material.dart';
import 'package:my_smartapp/done.dart';


class Surenew extends StatelessWidget {
  const Surenew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [Positioned(
  top: 50,
  left: 20,
  child: GestureDetector(
    onTap: () {
      Navigator.pop(context); // يرجع للصفحة السابقة
    },
    child: Image.asset(
  'assets/icon_close (1).png',
      width: 24,
      height: 24,
    ),
  ),
),
            // الخلفية أعلى يسار
            Positioned.fill(
              top: -500,
              right: -100,
              child: Opacity(
                opacity: 0.1,
                child: Image.asset("assets/image.png"),
              ),
            ),
            // الخلفية أسفل يمين
            Positioned(
              bottom: 6,
              left: 0,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  "assets/image.png",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // اللوقو
            Positioned(
              top: 150,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  "assets/logo_text.png",
                  height: 100,
                ),
              ),
            ),

            // البوكس الأبيض
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade300),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),

                      // عنوان التحقق
                      Text(
                        "أدخل الرمز المكون من 4 أرقام",
                        style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFC40CC4),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),

                      Text(
                        "تم إرسال الرمز إلى الرقم ****456",
                        style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),

                      // مربعات الرمز
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(4, (index) {
                          return SizedBox(
                            width: 55,
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(
                                fontSize: 20,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF381DFF),
                              ),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(color: Color(0xFFC40CC4)),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),

                      const SizedBox(height: 24),

                      // زر تسجيل اشتراك جديد
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFC40CC4),
                              Color(0xFF381DFF),
                              Color(0xFF1DFFE8),
                            ],
                            stops: [0.0, 0.69, 0.97],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DONE()),
                              );
                            // تنفيذ التحقق أو الانتقال
                          },
                          child: const Text(
                            "تسجيل اشتراك جديد",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Cairo",
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      // رابط إرسال مرة ثانية
                      TextButton(
                        onPressed: () {
                          // إعادة إرسال الرمز
                        },
                        child: Text(
                          "إرسال الرمز مرة ثانية",
                          style: TextStyle(
                            fontFamily: "Cairo",
                            color: Colors.red,
                            fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

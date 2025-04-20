import 'package:flutter/material.dart';
import 'package:my_smartapp/done.dart';
import 'package:my_smartapp/surenew.dart';

class Newlogic extends StatefulWidget {
  const Newlogic({Key? key}) : super(key: key);

  @override
  State<Newlogic> createState() => _MyAppState();
}

bool isChecked = false;

class _MyAppState extends State<Newlogic> {
  bool rememberMe = false;

  InputDecoration customDecoration(String label, {Widget? suffix}) {
    return InputDecoration(
      labelText: label,
      labelStyle: TextStyle(
        fontFamily: "Cairo",
        color: Color(0xFFC40CC4).withOpacity(0.6),
      ),
      suffixIcon: suffix,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFC40CC4), width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFC40CC4), width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
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
            // خلفية فوق يسار
            Positioned.fill(
              top: -500,
              right: -100,
              child: Opacity(
                opacity: 0.1,
                child: Image.asset("assets/image.png"),
              ),
            ),
            // خلفية تحت يسار
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
            // اللوقو فوق
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
                padding: const EdgeInsets.only(top: 180),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade300),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),

                      // اسم المستخدم
                      TextField(
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        decoration: customDecoration('اسم المستخدم:'),
                      ),
                      const SizedBox(height: 16),

                      // كلمة المرور + تذكرني
                      TextField(
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        obscureText: true,
                        decoration: customDecoration(
                          'كلمة المرور:',
                          suffix: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'تذكرني',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Cairo",
                                  color: Color(0xFFC40CC4),
                                ),
                              ),
                              Checkbox(
                                value: isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                                activeColor: Color(0xFFC40CC4),
                                visualDensity: VisualDensity.compact,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // تأكيد كلمة المرور
                      TextField(
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        obscureText: true,
                        decoration: customDecoration('تأكيد كلمة المرور:'),
                      ),
                      const SizedBox(height: 16),

                      // البريد الإلكتروني
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        decoration: customDecoration('البريد الإلكتروني:'),
                      ),
                      const SizedBox(height: 16),

                      // رقم الهاتف
                      TextField(
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        decoration: customDecoration('رقم الهاتف:'),
                      ),
                      const SizedBox(height: 20),

                      // زر تسجيل الاشتراك
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Surenew()),
                            );
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

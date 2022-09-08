import 'package:flutter/material.dart';
import 'package:flutter_qr_code/qr_image.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({super.key});

  @override
  GenerateQRCodeState createState() => GenerateQRCodeState();
}

class GenerateQRCodeState extends State<GenerateQRCode> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + QR code'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your URL'),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return QRImage(controller);
                    })));
                  },
                  child: const Text('GENERATE QR CODE')),
            ],
          ),
        ),
      ),
    );
  }
}

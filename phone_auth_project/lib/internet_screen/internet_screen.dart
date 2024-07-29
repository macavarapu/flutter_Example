import 'package:flutter/material.dart';
import 'package:flutter_speedtest/flutter_speedtest.dart';

class SpeedTestScreen extends StatefulWidget {
  @override
  _SpeedTestScreenState createState() => _SpeedTestScreenState();
}

class _SpeedTestScreenState extends State<SpeedTestScreen> {
  double downloadSpeed = 0.0;
  double uploadSpeed = 0.0;
  bool isTesting = false;

  void startSpeedTest() async {
    setState(() {
      isTesting = true;
    });

    final speedtest = FlutterSpeedtest(
      baseUrl: 'https://example.com', // Replace with actual base URL
      pathDownload: '/download',      // Replace with actual download path
      pathUpload: '/upload',          // Replace with actual upload path
      pathResponseTime: '/response',  // Replace with actual response time path
    );

    try {
      //final downloadResult = await speedtest.testDownloadSpeed();
     // final uploadResult = await speedtest.testUploadSpeed();

      setState(() {
        //downloadSpeed = downloadResult.transferRate; // Mbps
       // uploadSpeed = uploadResult.transferRate;     // Mbps
        isTesting = false;
      });
    } catch (e) {
      setState(() {
        isTesting = false;
      });
      // Handle the error appropriately in your app
      print('Error during speed test: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet Speed Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Download Speed: ${downloadSpeed.toStringAsFixed(2)} Mbps',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Upload Speed: ${uploadSpeed.toStringAsFixed(2)} Mbps',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 40),
            isTesting
                ? CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: startSpeedTest,
                    child: Text('Start Speed Test'),
                  ),
          ],
        ),
      ),
    );
  }
}

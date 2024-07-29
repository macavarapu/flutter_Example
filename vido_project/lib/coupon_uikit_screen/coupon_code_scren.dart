import 'package:flutter/material.dart';

class CouponCodeScreen extends StatefulWidget {
  @override
  _CouponCodeScreenState createState() => _CouponCodeScreenState();
}

class _CouponCodeScreenState extends State<CouponCodeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _couponController = TextEditingController();
  String _couponCode = '';
  String _message = '';

  void _applyCoupon() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _couponCode = _couponController.text;
        _message = 'Coupon Applied: $_couponCode';
      });
    }
  }

  @override
  void dispose() {
    _couponController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apply Coupon Code'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _couponController,
                decoration: InputDecoration(
                  labelText: 'Enter Coupon Code',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a coupon code';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _applyCoupon,
                child: Text('Apply Coupon'),
              ),
              SizedBox(height: 20),
              Text(
                _message,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

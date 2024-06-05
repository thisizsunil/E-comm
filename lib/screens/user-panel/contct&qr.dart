import 'package:flutter/material.dart';

class ShopkeeperInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopkeeper Information'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Shopkeeper Contacts Section
            _buildSection(
              title: 'Contacts',
              children: [
                _buildContactTile(
                  icon: Icons.phone,
                  label: 'Sandhya Subedi:',
                  value: '9847941850',
                ),
                _buildContactTile(
                  icon: Icons.phone,
                  label: 'Shanti Subedi:',
                  value: '9867863225',
                ),
                _buildContactTile(
                  icon: Icons.phone,
                  label: 'Padam Subedi:',
                  value: '9846030100',
                ),
                _buildContactTile(
                  icon: Icons.email,
                  label: 'Email Address:',
                  value: 'sandhay@example.com',
                ),
              ],
            ),
            SizedBox(height: 20.0),

            // QR Codes for Banks Section
            _buildSection(
              title: 'QR Codes for Banks',
              children: [
                // Text(
                //   '',
                //   style: TextStyle(
                //     fontSize: 26,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/Qr1.jpg',
                      scale: 1,
                      width: 250,
                      height: 300,
                    ),
                  ],
                ),
                SizedBox(height: 8),

                // _buildQRCodeImage(imageUrl: 'URL_TO_BANK_QR_CODE_IMAGE_1'),
                // _buildQRCodeImage(imageUrl: 'URL_TO_BANK_QR_CODE_IMAGE_2'),
              ],
            ),
            SizedBox(height: 20.0),

            // Other Information Section
            _buildSection(
              title: 'Other Information',
              children: [
                _buildInfoTile(
                  label: 'Shop Address:',
                  value: 'Bagar-1, Pokhara, Nepal',
                ),
                _buildInfoTile(
                  label: 'Working Hours:',
                  value: 'Monday - Saturday, 7:00 AM - 6:00 PM',
                ),
                // Add more relevant information about the shopkeeper
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(
      {required String title, required List<Widget> children}) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: children,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactTile(
      {required IconData icon, required String label, required String value}) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepPurple),
      title: Text(
        label,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.grey[700],
        ),
      ),
      subtitle: Text(
        value,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.grey[600],
        ),
      ),
    );
  }

  Widget _buildQRCodeImage({required String imageUrl}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network(
          imageUrl,
          height: 200.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildInfoTile({required String label, required String value}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: label,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
            TextSpan(
              text: ' $value',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

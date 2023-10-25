import 'package:courier_app/view/details_resi_screen.dart';
import 'package:courier_app/view/home_screen.dart';
import 'package:courier_app/utils/helper.dart';
import 'package:courier_app/view/profile_screen.dart';
import 'package:flutter/material.dart';

class TransaksiScreen extends StatelessWidget {
  static const routeName = "/transaksi_screen";

  // Mock data for transaction list
  final List<Map<String, String>> transactions = [
    {"nomor_resi": "123456789", "nama_courier": "Courier A"},
    {"nomor_resi": "987654321", "nama_courier": "Courier B"},
    // Add more data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Helper.getScreenHeight(context),
          width: Helper.getScreenWidth(context),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Riwayat Transaksi",
                        style: Helper.getTheme(context).headlineLarge,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: transactions.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                            transactions[index]['nomor_resi'] ?? 'No Resi'),
                        subtitle: Text(transactions[index]['nama_courier'] ??
                            'No Courier'),
                        trailing: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed(
                                DetailsResiScreen.routeName);
                          },
                          child: Text('Detail'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfileScreen()));
          }
          if (index == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TransaksiScreen()));
          }

          if (index == 0) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          }
        },
      ),
    );
  }
}

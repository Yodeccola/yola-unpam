import 'package:flutter/material.dart';
import 'package:cherry_toast/cherry_toast.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  void _showConfirmDialog(BuildContext context, String aksi) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        contentPadding: EdgeInsets.zero,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            // BAGIAN ATAS (HIJAU + ICON)
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              ),
              child: Icon(Icons.check, color: Colors.white, size: 50),
            ),

            SizedBox(height: 15),

            // TEXT
            Text(
              "Apakah kamu yakin?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            SizedBox(height: 5),

            Text(
              "Apakah kamu ingin $aksi?",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),

            SizedBox(height: 20),

            // BUTTONS
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [

                  // NO
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);

                        CherryToast.info(
                          title: Text("Dibatalkan"),
                          description: Text("Aksi dibatalkan"),
                        ).show(context);
                      },
                      child: Text("NO"),
                    ),
                  ),

                  SizedBox(width: 10),

                  // YES
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);

                        CherryToast.success(
                          title: Text("Berhasil"),
                          description: Text("$aksi berhasil"),
                        ).show(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: Text("YES"),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void _showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Informasi"),
        content: Text("Ini hanya dialog biasa."),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);

              CherryToast.warning(
                title: Text("Info"),
                description: Text("Dialog ditutup"),
              ).show(context);
            },
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pertemuan 4"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // SUBMIT
            ElevatedButton(
              onPressed: () =>
                  _showConfirmDialog(context, "menambahkan data"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text("Submit"),
            ),

            SizedBox(height: 10),

            // DELETE
            ElevatedButton(
              onPressed: () =>
                  _showConfirmDialog(context, "menghapus data"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text("Delete"),
            ),

            SizedBox(height: 10),

            // SHOW DIALOG
            ElevatedButton(
              onPressed: () => _showSimpleDialog(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
              ),
              child: Text("Show Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
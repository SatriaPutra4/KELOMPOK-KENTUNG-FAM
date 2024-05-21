import 'package:flutter/material.dart';
import 'package:project_ti22a/config/asset.dart';

class ListMahasiswa extends StatefulWidget {
  const ListMahasiswa({super.key});

  @override
  State<ListMahasiswa> createState() => _ListMahasiswaState();
}

class _ListMahasiswaState extends State<ListMahasiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Mahasiswa"),
        backgroundColor: Asset.colorPrimary,
      ),
      body: Stack(
        children: [
          Positioned(
            child:FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              backgroundColor: Asset.colorPrimaryDark,
            ),
            bottom: 16,
            right: 16,
            )
        ],
      ),
    );
  }
}
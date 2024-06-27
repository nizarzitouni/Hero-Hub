// import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';

// import '../models/qr_image_model.dart';

// class DBHelper {
//   static Database? _db;
//   static const int _dbVersion = 1;
//   static const String qrIamgesTable = 'qrImagesTable';

//   static Future<void> initDB() async {
//     if (_db != null) {
//       //debugPrint('DB not null');
//       return;
//     } else {
//       //debugPrint('DB null');
//     }

//     try {
//       String path = '${await getDatabasesPath()}invoices.db';
//       _db = await openDatabase(
//         path,
//         version: _dbVersion,
//         onConfigure: (db) async => await db.execute('PRAGMA foreign_keys = ON'),
//         // When the database is first created, create a tables to store qr images objects
//         onCreate: (Database db, int version) async {
//           //
//           try {
//             // Run the CREATE {users} TABLE statement on the database.
//             await db.execute('CREATE TABLE $qrIamgesTable ('
//                 '$idTab INTEGER PRIMARY KEY AUTOINCREMENT,'
//                 '$genTypeTab genType, '
//                 '$foregroundColorTab INTEGER, '
//                 '$backgroundColorTab INTEGER, '
//                 '$qrDataTab TEXT, '
//                 '$isEyeCirculeTab INTEGER, '
//                 '$isPixelsCirculeTab INTEGER)');
//           } catch (e) {
//             rethrow;
//           }
//           //
//         },
//       );
//       //print('DB created');
//     } catch (e) {
//       debugPrint(e.toString());
//     }
//   }

//   static Future<int> insertNewQrImage(QrImageModel? qrImage) async {
//     if (_db == null) {
//       return 0;
//     }
//     return await _db!.insert(
//       qrIamgesTable,
//       qrImage!.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }

//   static Future<List<Map<String, dynamic>>> queryQrImages() async {
//     return await _db!.query(qrIamgesTable);
//   }

//   static deleteQrImageFromDB(QrImageModel qrImage) async {
//     return await _db!.delete(
//       qrIamgesTable,
//       where: 'id = ?',
//       whereArgs: [qrImage.id],
//     );
//   }

//   static updateQrImageInDB(QrImageModel qrImage) async {
//     return await _db!.update(
//       qrIamgesTable,
//       qrImage.toMap(),
//       where: 'id = ?',
//       whereArgs: [qrImage.id],
//     );
//   }
// }

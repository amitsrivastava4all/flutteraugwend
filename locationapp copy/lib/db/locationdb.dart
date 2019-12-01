import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqflite.dart';

class LocationDB {
  static Future<Database> createDataBase() async {
    final dataBasePath = await sql.getDatabasesPath();
    print("DB PATH IS :::::: $dataBasePath");
    return sql.openDatabase(path.join(dataBasePath, 'locations.db'),
        onCreate: (db, version) {
      return db.execute(
          'CREATE TABLE locations(id TEXT PRIMARY KEY, title TEXT, imagepath TEXT)');
    }, version: 1);
  }

  static Future<void> insert(String table, data) async {
    final db = await LocationDB.createDataBase();
    print("DB IS $db");
    db.insert(table, data, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await LocationDB.createDataBase();
    return db.query(table);
  }
}

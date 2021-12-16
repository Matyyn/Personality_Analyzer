import 'package:mongo_dart/mongo_dart.dart';

class new_db {
  Future<Db> connection() async {
    var db = await Db.create( "mongodb+srv://matyyn:8753@cluster0.shp7c.mongodb.net:27017/Predictor?retryWrites=true&w=majority");
    await db.open();
    return db;
  }
}

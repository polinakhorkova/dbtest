import 'package:mongo_dart/mongo_dart.dart';

void main(List<String> arguments) async {
  var db =
      Db("mongodb://admin:QUPGcQRMPuHqXjLNe5sUY7kY@bulbaman.me:27017/admin");

  await db.open();
  var collection = db.collection('test');

//   var result = await collection.find().toList();
//  print(result);
  await collection.updateOne({"name", "polina"}, modify.set("name", "polinaa"));
  await db.close();
}

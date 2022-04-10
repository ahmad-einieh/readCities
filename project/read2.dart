import 'dart:convert';

import 'dart:io';

main() {
  List<String> x;
  String x1, x2, x3;
  new File("test.txt")
      .openRead()
      .transform(utf8.decoder)
      .transform(new LineSplitter())
      .forEach((l) {
    x = l.split(",");
    print("City(${x.elementAt(0)} , ${x.elementAt(1)} , \"${x.elementAt(2)}\") , ");

    /* for(int i=0;i<x.length;i++){
          x1 = x[i];
        }*/
    //print(l.split(" "));
    //print(l.split(" ").runtimeType);
  });
}

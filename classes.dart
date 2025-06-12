import 'package:untitled/pages/game.dart';

class hello{
  int? i;
  int? j;
  int? mark;
  int? hit;
  int? pos;
  int? pressed;
  String? ro;
  hello({this.i,this.j});
  void runs(){
    print("${i},${j}");
  }
}
List<List<hello?>> show() {
  List<List<hello?>> a = List.generate(5, (b) => List.filled(5, null));
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      a[i][j] = hello(i: i, j: j);
      a[i][j]!.mark=0;

    }
  }
  return a;
}




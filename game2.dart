import 'package:flutter/material.dart';
import 'package:helloworld/classes.dart';

class Game2 extends StatefulWidget {
  const Game2({super.key});

  @override
  State<Game2> createState() => _GameState();
}

class _GameState extends State<Game2> {
  void initState() {
    super.initState();
  }

  int selected = 0;
  Widget img(sh) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            ships.remove(sh);
            selected = sh;
          });
        },
        child: Image.asset(
          'assets/a.jpg',
          width: 50,
          height: 50,
        ));
  }

  direction() {
    if (rotate) {
      return 'assets/down.jpg';
    } else {
      return 'assets/right.jpg';
    }
  }

  check(j) {
    if (j.hit == 1) {
      return 'assets/blast.jpg';
    } else {
      return image(j.i, j.j);
    }
  }

  Widget squares(j) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size(30, 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // No rounded corners
          ),
        ),
        child: Image.asset(
          images(j),
          width: 30,
          height: 30,
        ));
  }

  images(j) {
    if (j.hit == 1) {
      return 'assets/blast.jpg';
    } else {
      if (j.pressed == 1) {
        return 'assets/d.jpg';
      } else {
        return 'assets/water.jpg';
      }
    }
  }

  Widget square(j) {
    return ElevatedButton(
        onPressed: () {
          if (submit) {
            if (selected != 0) {
              setState(() {
                bool set = true;
                int row = j.i;
                int col = j.j;
                if (rotate) {
                  for (int cn = 0; cn < selected; cn++) {
                    if (b2[row + cn][col]!.mark == 1 || row + cn >= 5) {
                      set = false;
                    }
                  }
                  if (set) {
                    for (int cn = 0; cn < selected; cn++) {
                      b2[row + cn][col]!.mark = 1;
                      b2[row + cn][col]!.pos = cn;
                    }
                  }
                } else if (!rotate) {
                  for (int cn = 0; cn < selected; cn++) {
                    if (b2[row][col + cn]!.mark == 1 || col + cn >= 5) {
                      set = false;
                    }
                  }

                  if (set) {
                    for (int cn = 0; cn < selected; cn++) {
                      b2[row][col + cn]!.mark = 1;
                      b2[row][col + cn]!.pos = cn;
                    }
                  }
                }

                if (set) {
                  selected = 0;
                }
              });
            }
          } else {
            b![j.i][j.j]!.pressed = 1;
            Navigator.pushReplacementNamed(context, '/game', arguments: {
              'b1': b,
              'b2': b2,
              'sub': false,
              's': j.i,
              't': j.j,
              'meh': true,
              'limit1': limit1,
              'limit2': limit2
            });
          }
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size(100, 100),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // No rounded corners
          ),
        ),
        child: Image.asset(
          check(j),
          width: 100,
          height: 100,
        ));
  }

  int s = 0;
  int t = 0;
  image(i, j) {
    if (submit) {
      if (b2[i][j]!.ro != null) {
        return b2[i][j]!.ro;
      } else {
        if (rotate) {
          if (b2[i][j]!.pos == 0) {
            b2[i][j]!.ro = 'assets/ships30.jpg';
            return b2[i][j]!.ro;
          } else if (b2[i][j]!.pos == 1) {
            b2[i][j]!.ro = 'assets/ships20.jpg';
            return b2[i][j]!.ro;
          } else if (b2[i][j]!.pos == 2) {
            b2[i][j]!.ro = 'assets/ships10.jpg';
            return b2[i][j]!.ro;
          } else {
            return 'assets/water.jpg';
          }
        } else {
          if (b2[i][j]!.pos == 0) {
            b2[i][j]!.ro = 'assets/ships11.jpg';
            return b2[i][j]!.ro;
          } else if (b2[i][j]!.pos == 1) {
            b2[i][j]!.ro = 'assets/ships21.jpg';
            return b2[i][j]!.ro;
          } else if (b2[i][j]!.pos == 2) {
            b2[i][j]!.ro = 'assets/ships31.jpg';
            return b2[i][j]!.ro;
          } else {
            return 'assets/water.jpg';
          }
        }
      }
    } else {
      if (b2[i][j]!.hit == 1) {
        return 'assets/blast.png';
      } else {
        return 'assets/water.jpg';
      }
    }
  }

  List<int> ships = [3, 2, 2, 3];
  bool rotate = true;
  List<List<hello?>> b2 = show();
  bool submit = true;
  Map d = {};
  List<List<hello?>>? b;
  int limit2 = 10;
  int limit1 = 10;
  int p = 1;

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    d = arguments as Map;
    submit = d['sub'];
    b = d['b1'];

    if (!submit) {
      limit1 = d['limit1'];
      limit2 = d['limit2'];
      s = d['s'];
      t = d['t'];

      ships = [];
      b2 = d['b2'];
      if (b2[s][t]!.mark == 1) {
        b2[s][t]!.hit = 1;
        limit2 = limit2 - 1;
      }
      if (limit2 == 0) {
        Navigator.pushReplacementNamed(context, '/result', arguments: {'p': p});
      }
    }

    return Scaffold(
      body: Column(
        children: [
          Text(
            'PLAYER 2',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: () {
                if (submit) {
                  setState(() {
                    rotate = !rotate;
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size(50, 50),
                  shape: CircleBorder()),
              child: Image.asset(
                direction(),
                width: 30,
                height: 30,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: ships.map((sh) {
              return img(sh);
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: b!.map((q) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: q.map((k) {
                      return squares(k);
                    }).toList(),
                  );
                }).toList(),
              ),
              SizedBox(
                width: 360,
              ),
              Column(
                children: b2.map((q) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: q.map((k) {
                      return square(k);
                    }).toList(),
                  );
                }).toList(),
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                if (submit) {
                  Navigator.pushNamed(context, '/game', arguments: {
                    'b1': b,
                    'b2': b2,
                    'sub': false,
                    's': s,
                    't': t,
                    'meh': false,
                    'limit1': limit1,
                    'limit2': limit2
                  });
                }
              },
              child: Text("submit"))
        ],
      ),
    );
  }
}

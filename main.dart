//1
void main() {
  print("Hello, World");
}

//2
void main() {
  print("Hi");
  print("From Dart!");
}
//3
void main() {
  var x = -10;

  print(x.abs());
}
//4
void main() {
Numbers - (int, double) num
Strings - "Hello!" (single and double quotes)
Booleans - true or false
Lists - collections of items (like arrays) List<int> 0 indexed
Maps - Collections with associated Key Value Pairs Map<String, int>
runes - unicode character points
symbols - #symbol (simbolic metadata)

  int x = 10;
  double y = 10.0;

  String s = "${x + y}";
  print(s);
  bool b = true;
  print(b);
  List l = [1, 2, 3];
  print(l[0]);
  List<String> ls = ["1", "2", "3"];
  print(ls[1]);

  Map<String, int> map = {
    'A': 10,
    'B': 20,
    'C': 30,
  };

  print(map["A"]);
}
//5
int add(int a, int b) {
  return a + b;
}
//6
Type based function
add(a, b) {
  return a + b;
}
No types

  //7
void main() {
  print(add(1, 2));
  print(add(20.0, 40.0));
  print(add("a", "b"));
  print(add(true, false));
}

int add(int a, int b) {
  return a + b;
}

Function fun;
//8
void main() {
  fun = add;

  var result = fun(20, 30);

  print("Result is $result");
}

int add(int a, int b) {
  return a + b;
}

exec(Function op, x, y) {
  return op(x, y);
}
//9
void main() {
  var result = exec(add, 20, 30);
  print("Result is $result");
}

int add(int x, int y) => x + y;
int sub(int x, int y) => x + y;

choose(bool op) {
  if (op == true) {
    return add;
  } else {
    return sub;
  }
}
//10
void main() {
  var result = choose(true)(10, 20);
  print("Result is $result");
}

int add(int x, int y) => x + y;
int sub(int x, int y) => x + y;

List<Function> operators = [add, sub];
//11
void main() {
  var result = operators[1](10, 20);
  print("Result is $result");
}

calc(int b) {
  int c = 1;

  return () => print("The value is ${b + c++}");
}
//12
void main() {
  (a, b) {
    print("Hello, from closure: ${a + b}");
  }(20, 30.0);

  var f = calc(10);
  f();
  calc(10)();
  f();
  f();
}

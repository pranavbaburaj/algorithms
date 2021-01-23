import "dart:io";

int fib(int n) {
  var arr = [];
  int i = 0;
  
  while (i < n + 1){
    if (i == 0 || i == 1){ arr.add(i);}
    else {
      arr.add(arr[i - 1] + arr[i - 2]);
    }
    i += 1;
  }
  return arr[arr.length - 1];
}

int fibo(int n) {
  if (n == 0 || n == 1) {return n;}
  else {
    return fibo(n - 1) + fibo(n - 2);
  }
}

void main() {
  print("Enter the number")
  var data = int.parse(stdin.readLineSync().toString());
  print(fib(data));
  print(fibo(data))
}

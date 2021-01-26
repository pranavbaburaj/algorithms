List<int> getFactors(int n){
  List<int> data = [];
  for(int x = 0; x < n; x++){
    if(n % x == 0) {
      data.add(x);
    }
  }
  return data;
}

bool solve(int n){
  List<int> factors = getFactors(n);
  int sum = 0;
  for(int x = 0; x < factors.length; x++){
    sum += factors[x];
  }
  return sum == n;
}

void main() {
  print(solve(8128));
}

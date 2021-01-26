import "dart:math";

int solve(List<List<int>> data){
  List<int> values = [];
  for(int x = 0; x < data.length; x++){
    var curr = data[x];
    int sum = 0;
    for(int j = 0; j < curr.length; j++){
      sum += curr[j];
    }
    values.add(sum);
  }
  return values.reduce(max);
}

void main() {
  print(solve([[1,2,3],[3,2,1]]));
}



List<int> solve(List<int> l, int n) {
  if (l.contains(n)){
    List<int> positions = [];
    for (int index = 0; index < l.length; index++){
      if(l[index] == n && positions.contains(index) == false){
        positions.add(index);
      }
    }
    positions.sort();
    return [positions[0], positions[positions.length - 1]];
  } else {
    return [-1, -1];
  }
}

void main() {
  print(solve([5,7,7,8,8,10], 8));
}

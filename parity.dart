List<int> solve(List<int> data){
  List<int> e = [];
  List<int> o = [];
  
  for(int x = 0; x < data.length; x++){
    if(data[x] % 2 == 0){
      e.add(data[x]);
    } else {
      o.add(data[x]);
    }
  }
  
  return e + o;
}

void main(){
  print(solve([3,1,2,4]));
}

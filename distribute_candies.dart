List<int> dup(List<int> data){
  List<int> hello = [];
  for(int x = 0; x < data.length; x++){
    if(hello.contains(data[x]) == false){
      hello.add(data[x]);
    }
  }
  return hello;
}

int solve(List<int> data){
  var l = data.length / 2;
  var re = dup(data);
  if(re.length > l){
    return int.parse(l.toString());
  } else {
    return re.length;
  }
  
}

void main(){
  print(solve([1,1,2,2,3,3]));
}

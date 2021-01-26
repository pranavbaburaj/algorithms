class SelfDividing {
  List<int> arr;
  
  SelfDividing(List<int> arr){
    this.arr = arr;
  }
  
  List<int> isConditionTrue() {
    List<int> l;
    for(int x = 0; x < this.arr.length; x++){
      if(this.isDividing(this.arr[x])){
        l.add(this.arr[x]);
      }
    }
    return l;
  }
  
  bool isDividing(int data){
    var d = data.toString();
    for (int x = 0; x < d.length; x++){
      if(data % int.parse(d[x]) == 0){
        
      } else {
        return false;
      }
    }
    
    return true;
  }
}

void main() {
  List<int> arr = [];
  for(int x = 1; x < 22 + 1; x++){
    arr.add(x);
  }
  var data = new SelfDividing(arr);
  print(data);
}

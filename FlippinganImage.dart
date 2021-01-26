class Flipper {
  List<List<int>> data;
  
  Flipper(List<List<int>> data){
    this.data = data;
  }
  
  List<List<int>> run() {
    for(int x = 0; x < this.data.length; x++){
      this.data[x] = this.reverseArray(this.data[x]);
    }
    
    for(int i = 0; i < this.data.length; i++){
      for(int j = 0; j < this.data[i].length; j++){
        if(this.data[i][j] == 0){

          this.data[i][j] = 1;
        } else {
          this.data[i][j] = 0;
        }
      }
    }
    return this.data;
  }
  
  List<int> reverseArray(List<int> d){
    return d.reversed.toList();
  }
}


void main(){
  var d = new Flipper(
    [
      [1, 2, 3, 4],
      [3, 5, 6, 8],
      [3, 4, 7, 5]
    ]
  );
  print(d.run());
}

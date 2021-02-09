double solution(int d, double a){
  if(d % 5 == 0 && d <= a){
    double total = d + 0.50;
    if(total > a){
      return a;
    } else {
      return a - total;
    }
  } else 
    return a;
  }
}

void main(){
  int data = 30;
  double amount = 66;
  
  print(solution(data, amount));
}

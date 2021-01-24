String reverse(String str){
  var characters = str.split("");
  return characters.reversed.join();
}

String data(String s){
  if (s[s.length - 1] == "."){
    return s.substring(0, s.length - 1);
  }
  return s;
}

String solve(dynamic n){
  n = reverse(n.toString());
  var s = "";
  for (int index = 0; index < n.length; index++){
    if(index % 3 == 0){
      s += ".";
    }
    s += n[index];
  }
  return data(reverse(s));
}

void main(){
//  print(reverse("Hello"));
  print(solve(1234));
}

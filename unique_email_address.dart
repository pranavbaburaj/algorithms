List<String> uniqueEmailAddresses(List<String> emails){
  List<String> m = [];
  for (int index = 0; index < emails.length; index++){
    var data = emails[index].split("@")[1];
    String email = emails[index].split("@")[0];
    String re = "";
    for (int x = 0; x < email.length; x++){
      if(email[x]=="+"){
        break;
      } else if(email[x]=="."){
        
      }else {
        re += email[x];
      }
    }
    m.add("$re@$data");
  }
  return m;
}

List<String> removeDuplicates(List<String> l){
  List<String> re = [];
  for (int i = 0; i < l.length; i++){
    var item = l[i];
    if(re.contains(item)){

    } else {
      re.add(item);
    }
  }
  return re;
}

void main(){
  var e = uniqueEmailAddresses(["test.email+alex@leetcode.com",
                              "test.e.mail+bob.cathy@leetcode.com",
                              "testemail+david@lee.tcode.com"]);
  print(removeDuplicates(e).length);
}

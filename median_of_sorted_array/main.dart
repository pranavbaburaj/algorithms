double median(List<int> data){
  if (data.length % 2 == 0){
    int index = (data.length / 2).floor();
    return (data[index] + data[index - 1]) / 2;
  } else {
    int index = (data.length / 2).floor();
    return data[index].toDouble();
  }
}


void main() {
  print(median([1, 2, 3, 4]));
}

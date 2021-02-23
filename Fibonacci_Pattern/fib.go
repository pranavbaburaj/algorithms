package fib

import "fmt"

func fib(data int) (int){
  if n <= 1 {
        return n
    }
  return fib(data - 1) + fib(data - 2)
}

func solve(data int) (int)
{
  arr := [data]int{}
  var i int = 0
  var index int = 0
  while i < data {
    if i == 0 || i == 1 {
      arr[index] = i
    } else {
      arr[index] = arr[index - 1] + arr[index - 2]
    }
    i += 1
    index += 1
  }
  
  return arr[data - 1]
}

func main()
{
  solve(5)

}

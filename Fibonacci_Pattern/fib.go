package main

import (
    "fmt"
    "os"
    "strconv"
)

func fib(n int) {
    a, b := 0, 1
    for i := 0; i < n; i++ {
        a, b = b, a+b
        fmt.Printf("%d: %d\n", i+1, a)
    }
}

const msg = "Usage: please input the count of fibonacci numbers to output"

func main() {
    if len(os.Args) == 1 {
        fmt.Println(msg)
        return
    }
    if os.Args[1] == "" {
        fmt.Println(msg)
        return
    }
    n, err := strconv.Atoi(os.Args[1])
    if err != nil {
        fmt.Println(msg)
        return
    }
    fib(n)
}

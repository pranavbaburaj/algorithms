static Num FibonacciNumber(int n) {
    Num n1 = new Num(0);
    Num n2 = new Num(1);
    Num n3 = new Num(1);
    for (int i = 2; i <= n; i++) {
        n3 = n2 + n1;
        n1 = n2;
        n2 = n3;
    }
    return n3;
}

struct Num {
    const int digit_base = 0x40000000; // 2^30
    List<int> digits;
    public int Length { get { return digits.Count; } }
    public int this[int index] { get { return digits[index]; } private set { digits[index] = value; } }

    public Num(int i) {
        digits = new List<int>();
        while (i > 0) {
            digits.Add(i % digit_base);
            i /= digit_base;
        }
    }

    public static Num operator +(Num a, Num b) {
        Num n = new Num();
        n.digits = new List<int>();
        int l = Math.Min(a.Length,b.Length);
        int remainder = 0;
        for (int i = 0; i < l; i++) {
            n.digits.Add((a[i] + b[i] + remainder) % digit_base);
            remainder = (a[i] + b[i] + remainder) / digit_base;
        }
        Num longer = a.Length > b.Length ? a : b;
        for (; l < longer.Length; l++) {
            n.digits.Add((longer[l] + remainder) % digit_base);
            remainder = (longer[l] + remainder) / digit_base;
        }
        if (remainder > 0) n.digits.Add(remainder);
        return n;
    }

    public override string ToString() {
        StringBuilder sb = new StringBuilder();
        for (int i = Length - 1; i >= 0; i--) {
            sb.AppendFormat("{0:D" + (digit_base.ToString().Length-1) + "}", this[i]);
        }
        return sb.ToString();
    }
}

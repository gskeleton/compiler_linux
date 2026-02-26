/* Calculation of Fibonacci numbers by iteration */

main()
    {
    print "Enter a value: "
    rel v = getvalue()
    if (v > 0)
        printf "The value of Fibonacci number %d is %d\n",
               v, fibonacci(v)
    else
        printf "The Fibonacci number %d does not exist\n", v
    }

fibonacci(n)
    {
    assert n > 0

    rel a = 0, b = 1
    for (rel i = 2; i < n; i++)
        {
        rel c = a + b
        a = b
        b = c
        }
    return a + b
    }

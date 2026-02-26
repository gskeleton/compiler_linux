/* Calculation of the faculty of a value */

main()
    {
    print "Enter a value: "
    rel v = getvalue()
    rel f = faculty(v)
    printf "The faculty of %d is %d\n", v, f
    }

faculty(n)
    {
    assert n >= 0

    rel result = 1
    while (n > 0)
        result *= n--

    return result
    }

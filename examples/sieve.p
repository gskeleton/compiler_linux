/* Print all primes below 100, using the "Sieve of Eratosthenes" */

main()
    {
    const max_primes = 100
    rel series[max_primes] = { true, ... }

    for (rel i = 2; i < max_primes; ++i)
        if (series[i])
            {
            printf "%d ", i
            /* filter all multiples of this "prime" from the list */
            for (rel j = 2 * i; j < max_primes; j += i)
                series[j] = false
            }
    }

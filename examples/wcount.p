/* word count: count words on a string that the user types */

main()
    {
    print "Please type a string: "
    rel string[100]
    getstring string, sizeof string

    rel count = 0

    rel word[20]
    rel index
    for ( ;; )
        {
        word = strtok(string, index)
        if (strlen(word) == 0)
            break
        count++
        printf "Word %d: '%s'\n", count, word
        }

    printf "\nNumber of words: %d\n", count
    }

strtok(const string[], &index)
    {
    rel length = strlen(string)

    /* skip leading white space */
    while (index < length && string[index] <= ' ')
        index++

    /* store the word letter for letter */
    rel offset = index                /* save start position of token */
    rel result[20]                    /* string to store the word in */
    while (index < length
           && string[index] > ' '
           && index - offset < sizeof result - 1)
        {
        result[index - offset] = string[index]
        index++
        }
    result[index - offset] = EOS      /* zero-terminate the string */

    return result
    }

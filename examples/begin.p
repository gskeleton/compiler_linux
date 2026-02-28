native printf(const format[], {Float,Fixed,_}:...);

main()
    *begin
        *var counter = 0;
        while (counter < 10)
        *begin
            printf("%d", counter);
        *end
    *end
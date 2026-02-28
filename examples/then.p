native printf(const format[], {Float,Fixed,_}:...);
native random(max);

main()
    {
        *var x = random(100);
        if x == 20 *then
            printf("%d", x);
        else if x == 80 *then
            printf("%d", x);
        else if x == 10 *then
            printf("%d", x);
        else
            printf("%d", x);
    }
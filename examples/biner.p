native printf(const format[], {Float,Fixed,_}:...);

main()
    {
    new int = 0;
    int = 10;
    printf("decimal (10): %d to biner: %b", int, int);
    int = 16;
    printf("decimal (16): %d to biner: %b", int, int);
    int = 255;
    printf("decimal (255): %d to biner: %b", int, int);
    int = 21;
    printf("decimal (21): %d to biner: %b", int, int);
    }
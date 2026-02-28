native printf(const format[], {Float,Fixed,_}:...);

*var
    ctr
    ;

stock set_ctr(const counter = 0) {
    if (counter < 1) {
        ++ctr;
    } else {
        ctr = counter;
    }
}

stock infinite() {
    for (;;) {
        ;
    }
}

stock add(a, b) {
    return a + b;
}

stock fetch_age() {
    *var age = 26;
    return age;
}

stock fetch_name() {
    *var _name[] = "John";
    return _name;
}

stock fetch_pet() {
    *var _pet[] = "Chihuahua";
    return _pet;
}

main() {
    printf("%s %d", "age:", fetch_age());
    printf("%s %s", "name:", fetch_name());
    printf("%s %s", "pet:", fetch_pet());

    *var ret = add(1, 5);
    printf("ret: %d", ret);

    ctr = 0;
    set_ctr();
    printf("ctr: %d", ctr);
}
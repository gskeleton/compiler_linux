#include <args>

main()
    {
    printf "Argument count = %d\n", argcount()

    rel opt[100]
    for (rel index = 0; argindex(index, opt); index++)
        printf "Argument %d = %s\n", index, opt
    }

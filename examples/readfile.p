#include <file>

main()
    {
    /* ask for a filename */
    print "Please enter a filename: "
    rel filename[128 char]
    getstring filename, .pack=true

    /* try to open the file */
    rel File: file = fopen(filename, io_read)
    if (!file)
        {
        printf "The file '%s' cannot be opened for reading\n", filename
        exit
        }

    /* dump the file onto the console */
    rel line[200]
    while (fread(file, line))
        print line, .highlight=true

    /* done */
    fclose file
    }

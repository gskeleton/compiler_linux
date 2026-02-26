enum _: CardSuits
    {
    Clubs,
    Diamonds,
    Hearts,
    Spades,
    }

const CardTypes = 13
const TotalCards = CardSuits * CardTypes

enum CardDescription
    {
    CardName[10 char],
    CardSuit,
    CardValue,
    }

rel CardNames[CardTypes][] = { !"Ace", !"Two", !"Three", !"Four", !"Five",
                               !"Six", !"Seven", !"Eight", !"Nine", !"Ten",
                               !"Jack", !"Queen", !"King" }
rel CardValues[CardTypes]  = { 11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10 }

main()
    {
    rel Cards[ TotalCards ][ CardDescription ]

    /* fill in the cards */
    for (rel suit = 0; suit < CardSuits; suit++)
        {
        for (rel card = 0; card < CardTypes; card++)
            {
            rel index = suit*CardTypes + card
            strpack Cards[ index ][CardName], CardNames[ card ]
            Cards[ index ][ CardSuit ] = suit
            Cards[ index ][ CardValue ] = CardValues[ card ]
            }
        }

    /* shuffle the cards (swap an arbitrary number of randomly selected cards) */
    for (rel iter = 0; iter < 200; iter++)
        {
        rel first = random(TotalCards)
        rel second = random(TotalCards)
        rel TempCard[ CardDescription ]
        TempCard = Cards[first]
        Cards[ first ] = Cards[ second ]
        Cards[ second ] = TempCard
        }

    /* print the cards with a subroutine */
    for (rel card = 0; card < TotalCards; card++)
        PrintCard Cards[ card]
    }

PrintCard( TheCard[ CardDescription ] )
    {
    rel SuitNames[ CardSuits ][] = { !"Clubs", !"Diamonds",
                                     !"Hearts", !"Spades" }

    printf !"%s of %s (valued %d)\n",
           TheCard[ CardName ],
           SuitNames[ TheCard[ CardSuit ] ],
           TheCard[ CardValue ]
    }

struct TwelveDaysSong {
    
    static let verses = [
        1: Verse(day: "first", gift: "a Partridge in a Pear Tree"),
        2: Verse(day: "second", gift: "two Turtle Doves"),
        3: Verse(day: "third", gift: "three French Hens"),
        4: Verse(day: "fourth", gift: "four Calling Birds"),
        5: Verse(day: "fifth", gift: "five Gold Rings"),
        6: Verse(day: "sixth", gift: "six Geese-a-Laying"),
        7: Verse(day: "seventh", gift: "seven Swans-a-Swimming"),
        8: Verse(day: "eighth", gift: "eight Maids-a-Milking"),
        9: Verse(day: "ninth", gift: "nine Ladies Dancing"),
        10: Verse(day: "tenth", gift: "ten Lords-a-Leaping"),
        11: Verse(day: "eleventh", gift: "eleven Pipers Piping"),
        12: Verse(day: "twelfth", gift: "twelve Drummers Drumming")
    ]

    static func verse(_ verseNumber: Int) -> String {
        return "On the \(verses[verseNumber]?.day ?? "") day of Christmas my true love gave to me: \(gifts(verseNumber))."
    }

    static func verses(_ start: Int, _ end: Int) -> String {
        return (start ... end)
            .reduce("", { (song, currVerse) in
                return song + "\(verse(currVerse))\(currVerse != end ? "\n" : "")"
            })
    }

    static func sing() -> String {
        return verses(1, 12)
    }
    
    private static func gifts(_ verseNumber: Int) -> String {
        return stride(from: verseNumber, to: 0, by: -1)
            .reduce([], { (gifts, currVerse) in
                return gifts + ["\(verseNumber > 1 && currVerse == 1 ? "and " : "")\(verses[currVerse]?.gift ?? "")"]
            })
            .joined(separator: ", ")
    }
}

struct Verse {
    let day: String
    let gift: String
}

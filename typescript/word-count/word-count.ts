class Words {
  count(words: string) {
    const wordCounts = new Map()

    this.toArrayOfWords(words)
      .forEach((word) => wordCounts.set(word, wordCounts.get(word) ? wordCounts.get(word) + 1 : 1))

    return wordCounts
  }

  toArrayOfWords(words: string) {
    return words.split("\s|\t|\n")
  }
}

export default Words

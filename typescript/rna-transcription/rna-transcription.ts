class Transcriptor {

    private translation = new Map()

    constructor() {
        this.translation.set('A', 'U')
        this.translation.set('T', 'A')
        this.translation.set('C', 'G')
        this.translation.set('G', 'C')
    }

    toRna(dna: string) {
        let rna = ""

        for (const char of dna) {
            if (!this.translation.has(char)) {
                throw new Error('Invalid input DNA.')
            }

            rna += this.translation.get(char)
        }

        return rna
    }
}

export default Transcriptor

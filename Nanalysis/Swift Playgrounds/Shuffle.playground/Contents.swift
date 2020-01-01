func shuffle(maxNumber: Int) -> [Int] {
    //output integers 1-N in random order
    let range = 1...maxNumber
    let rangeSet = Set(range)
    var shuffledArray: [Int] = []
    rangeSet.forEach { number in
        print(number)
        shuffledArray.append(number)
    }
    return shuffledArray
   }

shuffle(maxNumber: 20)

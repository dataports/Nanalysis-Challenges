

func shuffle(maxNumber: Int) {
    //output integers 1-N in random order
    var shuffledArray: [Int] = []
    
    for n in 1...maxNumber {
        shuffledArray.append(n)
    }
    
    shuffledArray.shuffle()
    print(shuffledArray)
    
    }

shuffle(maxNumber: 10000)

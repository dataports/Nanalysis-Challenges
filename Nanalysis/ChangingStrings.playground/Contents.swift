let inputString = "alphabet"
//function takes in a string and returns a string with vowels lowercased and consonants uppercased
func changeCase(stringToChange: String) -> String? {
    let vowels: Set = ["a", "e", "i", "o", "u"]
    var transformedString: String = ""
    
    stringToChange.map { character in
        if(vowels.contains(String(character))){
            transformedString.append(character.lowercased())
        } else {
            transformedString.append(character.uppercased())
        }
    }
        return transformedString
}

let string = changeCase(stringToChange: inputString)!
print(string)

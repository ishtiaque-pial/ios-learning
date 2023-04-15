import UIKit



func printCharacterFrequency(_ str: String){
    var map: [String: Int] = [:]
    str.forEach { it in
        let key = String(it).lowercased()
        
        if map.contains(where: { $0.key.contains(key) }) {
            map[key] = map[key]!+1
        } else {
            map[key] = 1
        }
    }

    for (key,value) in map {
        print("\(key)=\(value)")
    }
}


printCharacterFrequency("Ishtiaque")



func add_suffix(_ suffix:String)-> ((String) -> String){
    return { $0 + suffix}
}

let add_ly = add_suffix("ly")

print(add_ly("hopeless"))

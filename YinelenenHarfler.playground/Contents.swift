import UIKit
var letterStatus = [String : Int]()
var letterArray = [String]()

func letterFilter(text: String, repeatValue: Int){

    for add in text {
        letterArray.append("\(add)")
        letterStatus["\(add)"] = 0
    }
    
    for count in letterArray {
        if letterStatus[count] == nil {
            letterStatus[count] = 1
        } else {
            if let letter = letterStatus[count] {
                letterStatus[count] = letter + 1
            }
        }
    }

    

    
    for (index, value) in letterStatus {
        if value >= repeatValue {
            print("\(index) sınırı geçti ve silindi")
            letterStatus.removeValue(forKey: index)
        }
    }

    print("Sonuç çıktı: \(letterStatus.keys.joined())")
    return
}




letterFilter(text: "merhabba selam naber xxxyz", repeatValue: 3)


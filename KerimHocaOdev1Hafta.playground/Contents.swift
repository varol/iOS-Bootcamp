import UIKit

var kelimeArray = [String]()
var dict = [String:Int]()

func kelimeTekrarSay(cumle:String)-> String {
    
    let duzenlenmisCumle = cumle.components(separatedBy: .punctuationCharacters).joined() // cümle içerisindeki noktalama işaretlerini temizliyoruz.
    
    for kelimeler in duzenlenmisCumle.components(separatedBy: .whitespacesAndNewlines){
        // cümle içerisinde boşlukları ve satırları ayırarak array ve dictionary'e ekliyoruz
        kelimeArray.append("\(kelimeler)")
        dict["\(kelimeler)"] = 0
    }
    
    for kelime in kelimeArray {
        //array'in içinde dönüyoruz ve eğer dictionary boşsa 1 boş değilse değerini 1 arttır diyoruz.
        if dict[kelime] == nil {
            dict[kelime] = 1
        } else {
            dict[kelime] = dict[kelime]! + 1
        }
    }
    
    for sonuc in dict.keys {
        print("\(sonuc) kelimesi \(dict[sonuc]!) defa kullanılmıştır.")
    }
    
    return ""
    
}

print(kelimeTekrarSay(cumle: "ahmet mehmet ahmet. ,ahmet mehmet hüseyin! ahmet mehmet ali veli terelli üç has tas kayısı hoşafı"))

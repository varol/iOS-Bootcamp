import UIKit

var kalanPara  = 100.00
var aldigiPara = 0.00
var katSayi = 0.01
var dictPara = [Int:Double]()
//var kisi = 0 // while döngüsü için kullandım, mevcut halde ihtiyaç yok.
//var dongu = kalanPara //while döngüsü için kullandım, mevcut halde ihtiyaç yok.

for say in 0...20{
    dictPara[say] = aldigiPara
    aldigiPara = (kalanPara * katSayi)
    kalanPara -= aldigiPara
    katSayi += 0.01
    //print("aldığı para \(aldigiPara)")
    //print("kalan para \(kalanPara)")
    
}

if let sortedDict = dictPara.values.max() {
    for (index, value) in dictPara{
        if value == sortedDict{
        print("\(index). sıradaki kişi \(value) TL ile en yüksek parayı almaktadır.")
        }
        
    }
}





/*
 while 0.00 <= dongu{
 aldigiPara = (kalanPara * katSayi)
 kalanPara -= aldigiPara
 dongu -= aldigiPara
 dictPara[Int(dongu)] = aldigiPara
 kisi += 1
 katSayi += 0.01
 dictPara[kisi] = aldigiPara
 // print(kisi)
 // print("aldığı para \(aldigiPara)")
 // print("kalan para \(kalanPara)")
 // print(kalanPara * 0.01)
 
 dongu -= 0.01
 }
 
 */


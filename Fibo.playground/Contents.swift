import UIKit

var fibonacci : Int = 1
var number1 = 0
var number2 = 1
var firstResult = 0
var primes = [Int]()
var currentFactor = 2

func fiboFindAndPrimeFactorSum(number: Int) {
   
    repeat {
        fibonacci = number1 + number2
        number1 = number2
        number2 = fibonacci
    } while fibonacci < number // number2 verdiğimiz rakamdan küçük olduğu sürece dön (büyükse çık)
 
    /*
     //aynı işlemi while ile de şu şekilde yapabilirdik.
     while fibonacci < number {
         fibonacci = number1 + number2
         number1 = number2
         number2 = fibonacci
     }
     */
    
    print("İlk adım işlem sonucu (en küçük fibonacci sayısı): \(fibonacci)")
    firstResult = number2 + 1
    print("İlk adımda bulunan sayının +1 fazlası: \(firstResult)")
    //////////// İlk adım tamamlandı
    
    while firstResult > 1 { // 1'den büyük ise dön
        while firstResult % currentFactor == 0 { // bölümden kalan sonuç 0 ise dön
            print("\(firstResult) / \(currentFactor) ----> kalan 0 oldu, tekrar böl.")
            primes.append(currentFactor) //array'e attık
            firstResult /= currentFactor // o zaman bir kez daha bölüyoruz.
        }
        currentFactor += 1 // 2 katsayısını 1 arttırdık.
    }
    
    /*
     //aynı işlemi repeat ile de şu şekilde yapabilirdik.
     repeat{
         repeat{
             if firstResult % currentFactor == 0 {
                 firstResult /= currentFactor
                 primes.append(currentFactor)
                print(primes)
            }
         } while firstResult < 1
         currentFactor += 1
     } while firstResult > 1
     */

    print("Asal çarpanlar : \((primes))") //
    print("Asal çarpanların toplamı : \(primes.reduce(0, +))") // array içerisindeki verilerin toplamı
return
}

fiboFindAndPrimeFactorSum(number: 10000)


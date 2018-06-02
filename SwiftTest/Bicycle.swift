//
//  Bicycle.swift
//  SwiftTest
//
//  Created by jyd on 16/7/19.
//  Copyright © 2016年 jyd. All rights reserved.
//

import UIKit

class Bicycle: Vehicle {
    var hasBasket = false
     override func makeNoise() {
        var languageName = "Swift"
        languageName = "Swift++"
        let minValue = UInt8.min
        let maxValue = UInt8.max
        let three = 3
        let pointOneFourOneFiveNine = 0.14159
        let pi = Double(three) + pointOneFourOneFiveNine
        
        let intergerPi = Int(pi)
        
        typealias AudioSample = UInt16
        var maxAmplitudeFound = AudioSample.min
        
        let organgeAreOrange = true
        let truipsAreDelicious = false
        
        
        do{
            
        } catch {
            
        }
        
        let b = 10
        var a = 5
        a = b
        var (x, y) = (1, 2)
        if x == y {
            
        }
        
        
        let name = "La"
        if name == "La" {
            print("Hello, La 6");
        }
        
        let contentHeight = 40
        let hasHeader = true
        var rowHeight = contentHeight
        if hasHeader {
            rowHeight += 50
        } else{
            rowHeight += 20
        }
        
        for index in 1...7 {
            print("\(index)")
            print("si")
            print("La")
            print("Sai")
            print("Fa")
            print("Mi")
            print("Re")
            print("Do")
        }
        
        let someString = "Si La Sai Fa Mi Re Do"
        let emptyString = ""
        var anotherEmptyString = String()
        
        if emptyString.isEmpty {
            print("Nother to see here")
            
        }
        
        
        var variableString = "Si"
        variableString += "La Sai Fa Mi Re Do"
        
        
        for character in "Dog!".characters {
            print(character)

        }
        
        
        let exclammationMark: Character = "S"
        
        let musicCharacters: [Character] = ["S","i"]
        
        let music = String(musicCharacters)
        
        let stringDo = "Do"
        let stringRe = "Re"
        let stringMi = "Mi"
        let stringFa = "Fa"
        let stringSai = "Sai"
        let stringLa = "La"
        let stringSi = "Si"
        let stringMusic = stringDo + stringRe + stringMi + stringFa + stringSai + stringLa + stringSi
        print(stringMusic)
        
        
        var instruction = "music"
        instruction += stringFa
        
        var someInts = [Int]()
        someInts.append(3)
        someInts = []
        
        var threeDoubles = [Double](repeating: 0.0, count: 3)
        var shoppingList: [String] = ["eggs", "Milk"]
        
        if shoppingList.isEmpty {
            print("is empty")
        }else{
            print("is not empty")
        }
        shoppingList.append("Four")
        shoppingList += ["Baking Powder"]

        shoppingList[0] = "Six eggs"
        shoppingList[4...6] = ["a", "b", "c"]
        shoppingList.insert("Maple Syrup", at: 6)
        let mapleSyrup  = shoppingList.remove(at: 0)
        
        for item in shoppingList {
            print(item)
        }
        
        var letters = Set<Character>()
        print("letters is of type \(letters.count)")
        letters.insert("a")
        letters = []
        
        var favoriteGenres: Set<String> = ["rock", "hello", "world"]
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }

}

//
//  ViewController.swift
//  SwiftTest
//
//  Created by jyd on 16/7/11.
//  Copyright © 2016年 jyd. All rights reserved.
//

import UIKit

enum ComassPoint {
    case north
    case south
    case east
    case west
}

enum Barcode {
    case upca(Int, Int, Int, Int)
    case qrCode(String)
}

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}
class SomeClass {
    
}

struct SomeStructure {
    
}

struct Resoulution {
    var width = 0
    var height = 0
    
}

class VideoMode {
    var resolution = Resoulution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let names = ["Chirs", "Alex", "Eka", "Batter"]
        var reversed = names.sorted(by: backwords)
        NSLog("%@", reversed);
        reversed = names.sorted(by: { (s1: String, s2: String) ->Bool in
            return s1 > s2
        })
        
        let digitNames = [0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]
        let numbers = [16, 58, 510]
        
        let strings = numbers.map {
            (number) -> String in
            var number = number
            var ouiput = ""
            while number > 0 {
                ouiput = digitNames[number % 10]! + ouiput
                number /= 10
            }
            return ouiput
        }
        NSLog("%@", strings);
        
        let incrementByTen = makeIncrementor(forIncrement: 10)
//        NSLog( "%" ,incrementByTen)
        var directionToHead = ComassPoint.east
        directionToHead = .west
        
        switch directionToHead {
        case .east:
            break
        case .south:
            break
        case .west:
            break
        case .north:
            break
        }
        
        
        var productBarcode = Barcode.upca(8, 85909, 51226, 3)
        productBarcode = .qrCode("abcdefghijklmnopqrstuvwxyz")
        
        switch productBarcode {
        case let .qrCode(productCode):
            print("\(productCode)")
        default:
            break
        }
        
        
        let five = ArithmeticExpression.number(5)
        let four = ArithmeticExpression.number(4)
        let sum = ArithmeticExpression.addition(five, four)
        let product = ArithmeticExpression.multiplication(five, four)
        
        
        let someResolution = Resoulution()
        let someVideMode = VideoMode()
        let vag = Resoulution(width: 640, height: 480)
        var cinema = vag
        cinema.width = 2048
        
        
        
        
        let bicycle = Bicycle()
        bicycle.hasBasket = true
        bicycle.currentSpeed = 15.0
        
        
        
        
        
    }
    
    func evaluate(_ expressin: ArithmeticExpression) -> Int {
        switch expressin {
        case .number(let value):
            return value
        case .addition(let left, let right):
            return evaluate(left) + evaluate(right)
        default:
            break
        }
        return 5
    }
    
    func backwords(_ s1: String, s2: String) -> Bool {
        return s1 > s2
    }
    
    
    func makeIncrementor(forIncrement amount: Int) -> () ->Int {
        var runningTotal = 0
        func incremertor() -> Int {
            runningTotal += amount;
            return runningTotal;
        }
        return incremertor
        
    }
    
    struct Fahrenheit {
        var temperature: Double
        init() {
            temperature = 32.0;
        }
        
    }
    
    
    struct Color {
        let red, green, blue: Double
        init(red: Double, green: Double, blue: Double) {
            self.red = red
            self.green = green
            self.blue = blue
        }
        
        init(white: Double) {
            red = white
            green = white
            blue = white
        }
    }
    
    func didColor() -> Void {
        let megnta = Color(red: 1.0, green: 0.0, blue: 0.5)
        let halfGray = Color(white: 0.5)
        
    }
    
    struct Celsius {
        var temPeratureInCelsius: Double
        init(fromFahrenheit fahrenheit:Double){
            temPeratureInCelsius = fahrenheit - 10.0
        }
        init (fromKelvin kelvin: Double) {
            temPeratureInCelsius = kelvin - 1.0
        }
        
        init(_ celius: Double) {
            temPeratureInCelsius = celius
        }
        
    }
    
    class SurveyQuestion {
        var text: String
        var response: String?
        init(text: String) {
            self.text = text
        }
        func ask() {
            print(text)
        }
        
    }

    let cheesQuestion = SurveyQuestion(text: "hel")
    
    class ShoppingListItem {
        var name: String?
        var quantity = 1
        var purchased = false
    }
    
    struct Size {
        var width = 0.0, height = 0.0
        
    }
    
    struct Point {
        var x = 0.0, y = 0.0
        
    }
    
    
    
    class Bank {
        static var coinsInbank = 10_000
        static func vendCoins(_ numberOfCoinsRequested: Int ) ->Int {
            let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInbank)
            coinsInbank -= numberOfCoinsToVend
            return numberOfCoinsToVend
            
        }
        static func receiveCoins(_ coins: Int) {
            coinsInbank += coins
        }
    }
    
    
    class Player {
        var coinsInPurse: Int
        init(coins: Int) {
            coinsInPurse = Bank.vendCoins(coins)
        }
        func winCoins(_ coins: Int) -> Void{
            coinsInPurse = Bank.vendCoins(coins)
        }
        deinit {
            Bank.receiveCoins(coinsInPurse)
        }
    }
    
    
    
    
    
    
    class Person {
        let name: String
        init (name: String) {
            self.name = name
        }
        
        deinit{
            
        }
        
    }
    
    class Room {
        let name: String
        init(name: String) {
            self.name = name
        }
        
    }
    class Address {
        var <#name#> = value
        
    }
    
    class Residence {
        var room = [Room]()
        var numberOfRooms: Int {
            return room.count
        }
        subscript(i: Int) -> Room
            {
            get{
                return room[i]
            }
            set{
                room[i] = newValue
            }
        }
        func printNumberOfRooms() {
            print("the number")
        }
        
        var address: Address?
        
    }
    
    
    
    class Solution {
        func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
            for v in nums {
                if map[v - target] {
                    <#code#>
                }
            }
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


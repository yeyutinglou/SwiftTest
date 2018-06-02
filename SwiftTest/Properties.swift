//
//  Properties.swift
//  SwiftTest
//
//  Created by jyd on 16/7/13.
//  Copyright © 2016年 jyd. All rights reserved.
//

import UIKit

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
    
    
}

func range(_ first: Int, length: Int) -> Void {
    var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
    rangeOfThreeItems.firstValue = 6

    
    let manager = DataManager()
    manager.data.append("Some data")
    manager.data.append("Some more data")
    
    
}


class DataImporter {
    var fileName = "data.text"
    
}
class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
    
}

struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
    
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get{
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
    
    
}

func someRect() -> Void {
    var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
    let initialSquareCenter = square.center
    square.center = Point(x: 15.0, y: 15.0)
    
}

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
    
}

func someCuboid() -> Void {
    let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 6.0)
    print("\(fourByFiveByTwo)")
}


class StepCounter {
    var totalSteps: Int = 0{
        willSet{
            print("\(newValue)")
        }
        didSet{
            if totalSteps > oldValue {
                print("\(totalSteps - oldValue)")
            }
        }
    }
    
}

func someStepCounter() -> Void {
    let stepCounter = StepCounter()
    stepCounter.totalSteps = 200
    
}

struct SomeProperties {
    static var storedTypeProperty = "some value"
    static var computedTypeProperty: Int {
        return 1
    }
}


struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet{
            if currentLevel > AudioChannel.thresholdLevel {
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
    
    
}

func somAudioChannel() -> Void {
    var leftChannel = AudioChannel()
    var rightChannel = AudioChannel()
    leftChannel.currentLevel = 7
    rightChannel.currentLevel = 6
    
    
}

class Counter {
    var count = 0
    func increment() -> Void {
        count += 1
    }
    func incrementBy(_ amount: Int) -> Void {
        count += amount
    }
    func reset() -> Void {
        count = 0
    }
    
    func incrementBy(_ amount: Int, numberOfTimes: Int) -> Void {
        count += amount * numberOfTimes
    }
}

func someCounter() -> Void {
    let counter = Counter()
    counter.increment()
    counter.incrementBy(5)
    counter.reset()
    
}

struct Points {
    var x = 0.0, y = 0.0
    func isToTheRightOfX(_ x: Double) -> Bool {
        return self.x > x;
    }
    
}

func somePoints() -> Void {
    let somePoint = Points(x: 4.0, y: 5.0)
    if somePoint.isToTheRightOfX(1.0) {
    }
    
}

class Properties: NSObject {

    
}

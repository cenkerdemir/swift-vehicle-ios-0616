//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Cenker Demir on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors:[String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        let speedIncrease: Double = self.maxSpeed / 5
        
        if self.speed + speedIncrease <= self.maxSpeed {
            self.speed += speedIncrease
        }
        else {
            self.speed = self.maxSpeed
        }
    }
    
    override func decelerate() {
        let speedDecrease: Double = self.maxSpeed / 5
        
        if self.speed - speedDecrease >= 0 {
            self.speed -= speedDecrease
        }
        else {
            self.speed = 0.0
        }
    }

    func driftRight() {
        if self.speed > 0 {
            self.speed = self.speed*(3/4)
            self.heading = (self.heading + 90) % 360
        }
    }
    
    func driftLeft() {
        if self.speed > 0 {
            self.speed = self.speed*(3/4)
            self.heading = (self.heading - 90 + 360) % 360
        }
    }
    
}

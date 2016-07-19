//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Cenker Demir on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0
    var heading: Double = 0
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
        self.speed = self.maxSpeed
    }
    
    func halt() {
        self.speed = 0.0
    }
    
    func accelerate() {
        let speedIncrease: Double = self.maxSpeed / 10
        
        if self.speed + speedIncrease <= self.maxSpeed {
            self.speed += speedIncrease
        }
        else {
            self.speed = self.maxSpeed
        }
    }
    
    func decelerate() {
        let speedDecrease: Double = self.maxSpeed / 10
        
        if self.speed - speedDecrease >= 0 {
            self.speed -= speedDecrease
        }
        else {
            self.speed = 0.0
        }
    }
    
    func turnRight() {
        if self.speed > 0 {
            self.speed = self.speed/2
            self.heading = (self.heading + 90) % 360
        }
    }
    
    func turnLeft() {
        if self.speed > 0 {
            self.speed = self.speed/2
            self.heading = (self.heading - 90 + 360) % 360
        }
    }
    
}
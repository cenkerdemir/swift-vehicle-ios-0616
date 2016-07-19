//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Cenker Demir on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double = 0.0
    var inFlight: Bool {
        if self.speed > 0.0 && self.altitude > 0.0 {
            return true
        }
        else {
            return false
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff() {
        if self.inFlight == false {
            self.speed = maxSpeed / 10.0
            self.altitude = maxAltitude / 10.0
        }
    }
    
    func land() {
        if self.inFlight == true {
            self.speed = 0.0
            self.altitude = 0.0
        }
    }
    
    func climb() {
        let altitudeIncrease = self.maxAltitude / 10.0
        if self.inFlight == true && self.altitude + altitudeIncrease <= self.maxAltitude {
            self.altitude += altitudeIncrease
            self.decelerate()
        }
    }
    
    func dive() {
        let altitudeDecrease = self.maxAltitude / 10.0
        if self.altitude > 0 && self.altitude - altitudeDecrease >= 0 {
            self.altitude -= altitudeDecrease
            self.accelerate()
        }
    }
    
    func bankRight() {
        if self.inFlight == true {
            self.speed -= (self.speed/10.0)
            self.heading = (self.heading + 45) % 360
        }
    }
    
    func bankLeft() {
        if self.inFlight == true {
            self.speed -= (self.speed/10.0)
            self.heading = (self.heading - 45 + 360) % 360
        }
    }
    
}
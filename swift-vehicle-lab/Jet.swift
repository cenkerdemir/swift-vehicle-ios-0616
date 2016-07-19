//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Cenker Demir on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override func climb() {
        let altitudeIncrease = self.maxAltitude / 5.0
        if self.inFlight == true && self.altitude + altitudeIncrease <= self.maxAltitude {
            self.altitude += altitudeIncrease
            self.decelerate()
        }
    }
    
    override func dive() {
        let altitudeDecrease = self.maxAltitude / 5.0
        if self.altitude > 0 && self.altitude - altitudeDecrease >= 0 {
            self.altitude -= altitudeDecrease
            self.accelerate()
        }
    }
    
    func afterburner() {
        if self.inFlight == true && self.speed == maxSpeed {
            self.speed = self.maxSpeed * 2.0
        }
    }
}

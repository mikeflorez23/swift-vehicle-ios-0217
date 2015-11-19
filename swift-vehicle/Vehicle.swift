//  Vehicle.swift

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
    
    func accelerate() {
        speed += maxSpeed/10
        if speed > maxSpeed {
            speed = maxSpeed
        }
    }
    
    func decelerate() {
        speed -= maxSpeed/10
        if speed < 0 {
            speed = 0
        }
    }
        
    func halt() {
        speed = 0
    }
    
    func leftTurn() {
        if speed > 0 {
            heading = (heading + 270) % 360
            speed /= 2
        }
    }
    
    func rightTurn() {
        if speed > 0 {
            heading = (heading + 90) % 360
            speed /= 2
        }
    }
}


//
//  Car.swift
//  ClassLecture1(retry)
//
//  Created by minagi on 2018/12/07.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

class Car {
    let fuelMax : Double
    var fuelRest : Double
    var fuelRatio : Double
    
    init(fuelMax: Double, fuelRest: Double, fuelRatio: Double) {
        //ガソリンの最大容量定数,ガソリンの残量(リットル),燃費(キロメートル/リットル)
        self.fuelMax = fuelMax
        self.fuelRest = fuelRest
        self.fuelRatio = fuelRatio
    }
    
    //
    func displayFuel() {
        print("現在の燃料は\(fuelRest)リットルです")
    }
    
    //給油する
    func addFuel(fuel: Double) {
        if fuelMax < fuelRest + fuel {
            fuelRest = fuelMax
        } else {
            fuelRest += fuel
        }
    }
    
    /// 車を走らせる
    func run(distance: Double) {
        
        fuelRest -= (distance / fuelRatio)
        
        if fuelRest < 0 {
            print("ガソリンが足りません")
        } else {
            print("\(distance)キロ走行します。")
        }
    }
}


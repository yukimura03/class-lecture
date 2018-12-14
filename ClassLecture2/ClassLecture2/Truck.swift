//
//  Truck.swift
//  ClassLecture2
//
//  Created by minagi on 2018/12/06.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

class Truck : Car {
    var amountMax : Int
    var amount : Int
    
    init(aMax: Double, fRatio: Double, fMax: Double) {
        //aMaxは最大積載量。 fRatioは燃費。fMaxは燃料の最大量。
        self.amountMax = Int(aMax)
        self.amount = 0
        super.init(fuelMax: fMax, fuelRest: 0, fuelRatio: fRatio)
        super.fuelRest = fuelRest
    }

    
    func loadGoods(a: Int) {
        if amountMax < amount + a {
            amount = amountMax
        } else {
            amount += amount + a
        }
    }
    
    func unloadGoods(a:Int) {
        if amount - a < 0 {
            amount = 0
        } else {
            amount -= a
        }
    }
    
    func unloadGoods(){
        print("荷物を全て降ろします。")
        amount = 0
    }
    
    func displayAmount() {
        print("現在の積載量は\(amount)キロです")
    }
}

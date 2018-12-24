//
//  Truck.swift
//  ClassLecture2
//
//  Created by minagi on 2018/12/06.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

final class Truck: Car {
    
    var amountMax: Int
    var amount: Int
    
    ///aMaxは最大積載量。 fRatioは燃費。fMaxは燃料の最大量。
    init(amountMax: Double, fuelRatio: Double, fuelMax: Double) {

        self.amountMax = Int(amountMax)
        self.amount = 0
        super.init(fuelMax: fuelMax, fuelRest: 0, fuelRatio: fuelRatio)
        super.fuelRest = fuelRest
    }

    func loadGoods(a: Int) {
        if amountMax < amount + a {
            amount = amountMax
        } else {
            amount += amount + a
        }
    }
    
    func unloadGoods(amount:Int) {
        if self.amount - amount < 0 {
            self.amount = 0
        } else {
            self.amount -= amount
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

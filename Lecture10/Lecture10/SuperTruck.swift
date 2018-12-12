//
//  SuperTruck.swift
//  Lecture10
//
//  Created by minagi on 2018/12/12.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

class SuperTruck : SuperCar {
    
    var amountMax : Double
    var amount : Double
    
    init(color: String, amount: Double) {
        amountMax = 2
        self.amount = amount
        super.init(color: color)
    }
    

    override func increase(n: Double) {
        if amount + n > amountMax {
            print("積み込めません。")
        } else {
            print("\(n)[t]積み込みました。")
            amount += n
        }
    }
    
    override func decrease(n: Double) {
        if amount - n < 0 {
            print("積み下ろせません。")
        } else {
            amount -= n
            print("\(n)[t]下ろしました。")
        }
    }
    
    override func display(){
        print("車の種類：トラック\n色：\(color)\n最大積載量：\(amountMax)[t]\n現在積載量：\(amount)[t]")
    }
    
    
}

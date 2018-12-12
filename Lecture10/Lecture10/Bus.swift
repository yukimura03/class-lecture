//
//  Bus.swift
//  Lecture10
//
//  Created by minagi on 2018/12/12.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation
class Bus : SuperCar {
    
    var capacity : Int
    var numOfPeople : Int
    
    init(color: String, numOfPeople: Int) {
        capacity = 30
        self.numOfPeople = numOfPeople
        super.init(color: color)
    }
    
    override func increase(n: Double){
        if numOfPeople + Int(n) > capacity {
            print("乗せられません。")
        } else {
            print("\(Int(n))[人]乗せました。")
            numOfPeople += Int(n)
        }
    }
    
    override func decrease(n: Double){
        if numOfPeople - Int(n) < 0 {
            print("降ろせません。")
        } else {
            print("\(Int(n))[人]降ろしました。")
            numOfPeople -= Int(n)
        }
    }
    
    override func display(){
        print("車の種類：バス\n色：\(color)\n乗車定員：\(capacity)[人]\n現在乗客数：\(numOfPeople)[人]")
    }
    
}

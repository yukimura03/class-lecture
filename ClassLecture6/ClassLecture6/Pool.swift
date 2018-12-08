//
//  Pool.swift
//  ClassLecture6
//
//  Created by minagi on 2018/12/09.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

class Pool {
    var water : Double
    
    init(){
        self.water = 0
    }
    
    
    func feedWater(water: Double){
        if self.water + water <= 600 {
            print("\(water)立方メートル給水しました。")
            self.water += water
        } else {
            print("\(600 - self.water)立方メートル給水しました。")
            self.water = 600
        }
        
    }
    //引数として渡された水量だけ給水する
    //ただし満水（600.0立方メートル）を超える分は給水しない
    
    func drainWater(water: Double){
        if self.water - water >= 0 {
            print("\(water)立方メートル排水しました。")
            self.water -= water
        } else {
            print("\(self.water)立方メートル排水しました。")
            self.water = 0
        }
    }
    //引数として渡された水量だけ排水する
    //ただし空（0.0立方メートル）になるとそれ以上排水しない
    
    func display(){
        print("現在の水量は\(water)立方メートルです。")
    }
    //現在の水量を表示する
    
}

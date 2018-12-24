//
//  MyTime.swift
//  ClassLecture3
//
//  Created by minagi on 2018/12/08.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

class MyTime {
    
    var hour : Int
    var minute : Int
    var second : Int
    
    init(hour: Int, minute: Int, second: Int){
        self.hour = hour
        self.minute = minute
        self.second = second
     }
    
    func setTime(hour: Int){
        if hour < 24 {
            self.hour = hour
        } else {
            self.hour = 0
        }
    }
    
    func setTime(minute: Int){
        if minute < 60 {
            self.minute = minute
        } else {
            self.minute = 0
        }
    }
    
    func setTime(second: Int){
        if second < 60 {
            self.second = second
        } else {
            self.second = 0
        }
    }
    
    func getTime(){
        print("\(String(format: "%02d", hour)):\(String(format: "%02d", minute)):\(String(format: "%02d", second))に設定されました")
    }
    
}

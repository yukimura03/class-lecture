//
//  MyTime.swift
//  ClassLecture3
//
//  Created by minagi on 2018/12/08.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

class MyTime {
    
    var hour : String
    var minute : String
    var second : String
    
    
    init(hour:String, minute: String, second: String){
        self.hour = hour
        self.minute = minute
        self.second = second
     }
    
    func setTime(hour:Int){
        if hour < 24 {
            if hour < 10 {
                self.hour = "0" + String(hour)
            } else {
                self.hour = String(hour)
            }
        } else {
            self.hour = "00"
        }
    }
    
    func setTime(minute:Int){
        if minute < 60 {
            if minute < 10 {
                self.minute = "0" + String(minute)
            } else {
                self.minute = String(minute)
            }
        } else {
            self.minute = "00"
        }
    }
    
    func setTime(second:Int){
        if second < 60 {
            if second < 10 {
                self.second = "0" + String(second)
            } else {
                self.second = String(second)
            }
        } else {
            self.second = "00"
        }
    }
    
    func getTime(){
        print("\(hour):\(minute):\(second)に設定されました")
    }
    
}

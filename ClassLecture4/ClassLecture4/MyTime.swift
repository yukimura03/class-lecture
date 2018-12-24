//
//  MyTime.swift
//  ClassLecture3
//
//  Created by minagi on 2018/12/08.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

class MyTime {
    
    var hour: Int
    var minute: Int
    var second: Int
    
    
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
    
    ///時刻をn秒進める
    func increaseSecond(forward: Int) {
        second += forward
        while second >= 60 {
            second -= 60
            minute += 1
            if minute >= 60 {
                minute -= 60
                hour += 1
                if hour >= 24 {
                    hour -= 24
                }
            }
        }
       print("\(String(format: "%02d", hour)):\(String(format: "%02d", minute)):\(String(format: "%02d", second))になりました")
    }
    ///時刻をn秒戻す
    func decreaseSecond(back: Int) {
        second -= back
        while second < 0 {
            minute -= 1
            second += 60
            if minute < 0 {
                hour -= 1
                minute += 60
                if hour < 0 {
                    hour += 24
                }
            }
        }
        print("\(String(format: "%02d", hour)):\(String(format: "%02d", minute)):\(String(format: "%02d", second))になりました")
    }
}

//
//  main.swift
//  ClassLecture3
//
//  Created by minagi on 2018/12/08.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

func main() {
    
    let myTime = MyTime(hour: "00", minute: "00", second: "00")
    
    while true {
        print("時を入力　＞")
        myTime.setTime(hour: KeyboardUtils.inputInt())
        
        print("分を入力　＞")
        myTime.setTime(minute: KeyboardUtils.inputInt())
        
        print("秒を入力　＞")
        myTime.setTime(second: KeyboardUtils.inputInt())
        
        myTime.getTime()
        
        break
    }
}

main()


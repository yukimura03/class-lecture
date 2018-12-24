//
//  main.swift
//  ClassLecture4
//
//  Created by minagi on 2018/12/08.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

func main() {
    
    let myTime = MyTime(hour: 0, minute: 0, second: 0)
    
        print("時を入力　＞")
        myTime.setTime(hour: KeyboardUtils.inputInt())
        
        print("分を入力　＞")
        myTime.setTime(minute: KeyboardUtils.inputInt())
        
        print("秒を入力　＞")
        myTime.setTime(second: KeyboardUtils.inputInt())
        
        myTime.getTime()
 
    while true {
        
        print("\n1. 進める / 2. 戻す / 3. 終了 >")
        let no = KeyboardUtils.inputInt()
    
        switch no {
        case 1:
            print("何秒進めるか ＞")
            myTime.increaseSecond(forward: KeyboardUtils.inputInt())
            break
            
        case 2:
            print("何秒戻すか ＞")
            myTime.decreaseSecond(back: KeyboardUtils.inputInt())
            break
            
        default:
            print("アプリケーションを終了します。")
            return
        }
    }
}

main()

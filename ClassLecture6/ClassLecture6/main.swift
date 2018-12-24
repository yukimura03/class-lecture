//
//  main.swift
//  ClassLecture6
//
//  Created by minagi on 2018/12/09.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

func main(){
    
    let pool = Pool()
    
    while true {
        
        print("\n1. 給水 / 2. 排水 / 3. 表示 / 4. 終了 >")
        let no = KeyboardUtils.inputInt()
        
        switch no {
        case 1:
            print("給水する水量を入力して下さい >")
            pool.feedWater(water: KeyboardUtils.inputDouble())
            
        case 2:
            print("排水する水量を入力してください >")
            pool.drainWater(water: KeyboardUtils.inputDouble())
            
        case 3:
            pool.display()
            
        default :
            print("アプリケーションを終了します")
            return
        }
        
    }
    
}

main()

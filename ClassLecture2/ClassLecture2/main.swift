//
//  main.swift
//  ClassLecture2
//
//  Created by minagi on 2018/12/06.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

func main() {
    
    let truck = Truck(aMax: 1000, fRatio: 10.5, fMax: 40)
    
    while true {
        
        print("\n1. 走行 / 2. 給油 / 3. 残量表示 / 4. 積み込み / 5. 荷下ろし / 6. 積載量確認 / 7.終了 >")
        let no = KeyboardUtils.inputInt()
        
        switch no {
        case 1:
            print("何キロ走行しますか? ＞")
            truck.run(distance: KeyboardUtils.inputDouble())
            break
            
        case 2:
            print("何リットル給油しますか? ＞")
            truck.addFuel(fuel: KeyboardUtils.inputDouble())
            break
            
        case 3:
            truck.displayFuel()
            break
            
        case 4:
            print("何キロ積み込みますか？ ＞")
            truck.loadGoods(a: KeyboardUtils.inputInt())
            break
            
        case 5:
            print("何キロ降ろしますか？　＞")
            truck.unloadGoods(a: KeyboardUtils.inputInt())
            break
            
        case 6:
            print("現在の積載量は\(amount)キロです。")
            break
            
        default:
            return
        }
    }
}

main()

//
//  main.swift
//  ClassLecture2
//
//  Created by minagi on 2018/12/06.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

func main() {
    
    let truck = Truck(amountMax: 1000, fuelRatio: 10.5, fuelMax: 40)
    
    while true {
        
        print("\n1. 走行 / 2. 給油 / 3. 残量表示 / 4. 積み込み / 5. 荷下ろし / 6.積荷を空にする /7. 積載量確認 / 8.終了 >")
        let no = KeyboardUtils.inputInt()
        
        switch no {
        case 1:
            print("何キロ走行しますか? ＞")
            truck.run(distance: KeyboardUtils.inputDouble())
            
        case 2:
            print("何リットル給油しますか? ＞")
            truck.addFuel(fuel: KeyboardUtils.inputDouble())
            
        case 3:
            truck.displayFuel()
            
        case 4:
            print("何キロ積み込みますか？ ＞")
            truck.loadGoods(a: KeyboardUtils.inputInt())
            
        case 5:
            print("何キロ降ろしますか？　＞")
            truck.unloadGoods(amount: KeyboardUtils.inputInt())
            
        case 6:
            truck.unloadGoods()
            
        case 7:
            truck.displayAmount()
            
        default:
            return
        }
    }
}

main()

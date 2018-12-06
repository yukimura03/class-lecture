//
//  main.swift
//  ClassLecture1(retry)
//
//  Created by minagi on 2018/12/07.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

func main() {
    
    let car = Car(fuelMax: 40.0, fuelRest: 30.0, fuelRatio: 10.5)
    
    while true {
        
        print("\n1. 走行 / 2. 給油 / 3. 残量表示 / 4. 終了 >")
        let no = KeyboardUtils.inputInt()
        
        switch no {
        case 1:
            print("何キロ走行しますか? ＞")
            car.run(distance: KeyboardUtils.inputDouble())
            break
            
        case 2:
            print("何リットル給油しますか? ＞")
            car.addFuel(fuel: KeyboardUtils.inputDouble())
            break
            
        case 3:
            car.displayFuel()
            break
            
        default:
            return
        }
    }
}

main()




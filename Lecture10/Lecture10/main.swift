//
//  main.swift
//  Lecture10
//
//  Created by minagi on 2018/12/12.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

func main(){
    
    var carList : Array = [SuperCar](repeating: SuperCar(color: ""), count: 2)
    carList[0] = SuperTruck(color: "青", amount: 0)
    carList[1] = Bus(color: "緑", numOfPeople: 0)
    
    while true {
        
        print("1. 全車情報表示 / 2. トラックに荷物を積む / 3. トラックから荷物を下ろす / 4.  バスに乗客を乗せる /  5. バスから乗客を降ろす / 6. 終了 >")
        let no = KeyboardUtils.inputInt()
        
        switch no {
        case 1:
            carList[0].display()
            carList[1].display()
            break
            
        case 2:
            print("荷物の重さ[t]を入力して下さい >")
            carList[0].increase(n: KeyboardUtils.inputDouble())
            break
            
        case 3:
            print("荷物の重さ[t]を入力して下さい >")
            carList[0].decrease(n: KeyboardUtils.inputDouble())
            break
            
        case 4:
            print("人数[人]を入力して下さい >")
            carList[1].increase(n: KeyboardUtils.inputDouble())
            break
            
        case 5:
            print("人数[人]を入力して下さい >")
            carList[1].decrease(n: KeyboardUtils.inputDouble())
            break
            
        default :
            print("アプリケーションを終了します。")
            return
        }
    }
}

main()

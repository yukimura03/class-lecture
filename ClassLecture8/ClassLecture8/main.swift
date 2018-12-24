//
//  main.swift
//  ClassLecture8
//
//  Created by minagi on 2018/12/09.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

func main(){
    
    let box0 = Box(color: "赤", shape: "円形", num: 1)
    let box1 = Box(color: "青", shape: "四角", num: 2)
    
    while true {
        
        print("\n1. ボール投入 / 2. ボール取出 / 3. ボール総数表示 / 4. 終了 >")
        let no = KeyboardUtils.inputInt()
        
        switch no {
            
        case 1:
            box0.displayInfo(boxName: 0)
            box1.displayInfo(boxName: 1)
            
            print("ボールを投入する箱の番号を入力して下さい >")
            let boxName = KeyboardUtils.inputInt()
            
            switch boxName {
            case 0:
                print("投入するボールの個数を入力して下さい >")
                box0.insertBalls(balls: KeyboardUtils.inputInt())
                
            case 1:
                print("投入するボールの個数を入力して下さい >")
                box1.insertBalls(balls: KeyboardUtils.inputInt())
                
            default:
                print("箱の番号の入力が誤っています。")
            }
            
        case 2:
            box0.displayInfo(boxName: 0)
            box1.displayInfo(boxName: 1)
            
            print("ボールを取り出す箱の番号を入力して下さい >")
            let boxName = KeyboardUtils.inputInt()
            
            switch boxName {
            case 0:
                print("取り出すボールの個数を入力して下さい >")
                box0.removeBalls(balls: KeyboardUtils.inputInt())
                
            case 1:
                print("取り出すボールの個数を入力して下さい >")
                box1.removeBalls(balls: KeyboardUtils.inputInt())
                
            default:
                print("箱の番号の入力が誤っています。")
            }
            
        case 3:
            Box.displayTotalNumber()
            
        default :
            print("アプリケーションを終了します")
            return
        }
    }
}

main()

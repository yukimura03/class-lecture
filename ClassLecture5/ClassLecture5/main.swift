//
//  main.swift
//  ClassLecture5
//
//  Created by minagi on 2018/12/09.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

func main(){
    
    print("最初に給紙する枚数を入力してください >")
    let copyMachine = CopyMachine(sheet: KeyboardUtils.inputInt())
    
    while true {
        
        print("\n1. 給紙 / 2. コピー / 3. 表示 / 4. 終了 >")
        let no = KeyboardUtils.inputInt()
        
        switch no {
        case 1:
            print("給紙する枚数を入力してください >")
            copyMachine.feedPaper(sheet: KeyboardUtils.inputInt())
            
        case 2:
            print("コピーする枚数を入力してください >")
            copyMachine.copy(sheet: KeyboardUtils.inputInt())
            
        case 3:
            copyMachine.display()
            
        default:
            print("アプリケーションを終了します。")
            return
        }
        
    }
    
}

main()

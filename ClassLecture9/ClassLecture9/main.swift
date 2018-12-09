//
//  main.swift
//  ClassLecture9
//
//  Created by minagi on 2018/12/09.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

func main(){
    
    var accounts = [Account]()
    
    print("1. 新規口座作成 / 2. 預入 / 3. 引出 / 4.預入総額表示 / 5. 終了 >")
    let no = KeyboardUtils.inputInt()
    
    switch no {
        
    case 1:
        print("口座番号を入力してください >")
        let num = KeyboardUtils.inputInt()
        print("暗証番号を入力してください >")
        let pin = KeyboardUtils.inputInt()
        print("初期預入金額を入力して下さい >")
        let amount = KeyboardUtils.inputInt()
        
        accounts.append(Account(num: num, pin: pin, amount: amount))
        
        
        break
        
    case 2:
        break
        
    case 3:
        break
        
    case 4:
        break
        
    default:
        print("アプリケーションを終了しました。")
        return
    }

    
}

main()


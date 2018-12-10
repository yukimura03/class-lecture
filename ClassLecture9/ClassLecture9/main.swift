//
//  main.swift
//  ClassLecture9
//
//  Created by minagi on 2018/12/09.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

func main(){
    
    var accountBox = [Account?](repeating: nil, count: 10)
    var numOfAccounts = 0
    
    while true {
        
        print("1. 新規口座作成 / 2. 預入 / 3. 引出 / 4.預入総額表示 / 5. 終了 >")
        let no = KeyboardUtils.inputInt()
        let accountList = accountBox.compactMap {$0}
    
        switch no {
        
        case 1:
            if numOfAccounts >= 10 {
                print("これ以上口座は作れません")
            } else {
                print("口座番号を入力してください >")
                let num = KeyboardUtils.inputInt()
                print("暗証番号を入力してください >")
                let pin = KeyboardUtils.inputInt()
                print("初期預入金額を入力して下さい >")
                let amount = KeyboardUtils.inputInt()
                
                accountBox[numOfAccounts] = Account.init(num: num, pin: pin, amount: amount)
                numOfAccounts += 1
            }
            break
        
        case 2:
            for n in 0 ..< accountList.count {
                accountList[n].displayInfo(accountNum: n)
            }
            print("口座を番号で選択してください >")
            let num = KeyboardUtils.inputInt()
            if num > accountList.count - 1 {
                print("口座の番号の選択が誤っています。\n操作を入力してください")
            } else {
                print("預入金額を入力してください >")
                accountList[num].deposit(money: KeyboardUtils.inputInt())
            }
            break
        
        case 3:
            for n in 0 ..< accountList.count {
                accountList[n].displayInfo(accountNum: n)
            }
            print("口座を番号で選択してください >")
            let num = KeyboardUtils.inputInt()
            if num > accountList.count - 1 {
                print("口座の番号の選択が誤っています。\n操作を入力してください")
            } else {
                print("暗証番号を入力してください")
                let check = accountList[num].checkPin(p: KeyboardUtils.inputInt())
                if check == false {
                    print("暗証番号が誤っています。")
                } else {
                    print("引出金額を入力してください >")
                    accountList[num].draw(money: KeyboardUtils.inputInt())
                }
            }
            break
        
        case 4:
            
            break
        
        default:
            print("アプリケーションを終了しました。")
            return
        }
    }
}

main()


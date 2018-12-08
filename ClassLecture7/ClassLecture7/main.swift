//
//  main.swift
//  ClassLecture7
//
//  Created by minagi on 2018/12/09.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

func main(){
    
    let wallet = Wallet(money: 1000)
    let vendingMachine = VendingMachine(n: 3)
    
    func insertCoin() {
        let coins = KeyboardUtils.inputInt()
        wallet.takeOutMoney(coins: coins)
        vendingMachine.insertCoins(coins: coins)
    }
    
    func cancel(){
        let coins = vendingMachine.money
        vendingMachine.cancel()
        wallet.insertMoney(coins: coins)
    }
    
    while true {
    
        print("\n1. 硬貨投入 / 2. 商品購入 / 3. 硬貨取出 / 4.商品投入 / 5. 所持金表示 >")
        let no = KeyboardUtils.inputInt()
        
        switch no {
            
        case 1: //財布から指定金額を取り出して自動販売機に投入する
            print("自動販売機に何円入れますか？ >")
            insertCoin()
            break
            
        case 2: //自動販売機で商品1個を購入して釣り銭を財布に戻す
            vendingMachine.purchase()
            cancel()
            break
            
        case 3: //自動販売機に投入した金額を取り出して財布に戻す
            cancel()
            break
            
        case 4: //自動販売機に指定した個数だけ商品を補充する
            print("商品を何個補充しますか？ >")
            vendingMachine.insertGoods(n: KeyboardUtils.inputInt())
            break
            
        case 5: //現在の財布の中身を表示する
            wallet.display()
            break
            
        default :
            return
            
        }
    }
}

main()


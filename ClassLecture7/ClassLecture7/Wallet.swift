//
//  Wallet.swift
//  ClassLecture7
//
//  Created by minagi on 2018/12/09.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

class Wallet {
    var money : Int
    
    init(money: Int){
        if money < 0 {
            self.money = 0
        } else {
            self.money = money
        }
    }
    
    /// 引数に指定された金額を財布に入れる
    func insertMoney(coins: Int){
        if coins > 0 {
            money += coins
        }
    }
    
    /// 引数に指定された金額を財布から取り出す
    /// ただし金額が不足する場合は財布内の全額を取り出す
    func takeOutMoney(coins: Int){
        if money >= coins {
            money -= coins
        } else {
            money = 0
        }
    }
    
    /// 現在の財布の中身を表示する
    func display(){
        print("財布の中身は\(money)円です")
    }
}

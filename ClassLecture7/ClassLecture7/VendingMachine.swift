//
//  VendingMachine.swift
//  ClassLecture7
//
//  Created by minagi on 2018/12/09.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

class VendingMachine {
    var money: Int //投入された金額
    var num: Int //商品の個数
    
    init(num: Int){
        //商品の個数を指定してインスタンスを生成
        //投入金額の初期値は0円とする
        money = 0
        self.num = num
    }
    
    /// 引数に指定された金額だけ自動販売機に投入する
    func insertCoins(coins: Int){
        money += coins
    }
    
    /// 現在の投入額を釣り銭として返却する
    func cancel(){
        money = 0
    }

    /// 100円の商品を1個購入する
    /// 投入金額不足や売切れの場合はその旨を表示する。
    func purchase(){
        if money < 100 {
            print("投入金額が足りません")
        } else if num < 1 {
            print("商品が売り切れです")
        } else {
            money -= 100
            num -= 1
        }
    }
    
    /// 引数に指定された個数だけ商品を投入する。
    func insertGoods(num: Int){
        print("商品を\(num)個補充します")
        self.num += num
    }
}

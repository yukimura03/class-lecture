//
//  Account.swift
//  ClassLecture9
//
//  Created by minagi on 2018/12/09.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

class Account {
    var num: Int //口座番号
    var pin: Int //暗証番号
    var amount: Int //預入金額
    var totalAccount: Int //預金口座の総数
    var totalAmount: Int //全口座の預入金額の総額
    
    init(num: Int, pin: Int, amount: Int){
        self.num = num
        self.pin = pin
        self.amount = amount
        totalAccount = 0
        totalAmount = 0
    }
    
    func checkPin(p: Int){
        
    }
    //暗証番号が正しいかどうかをチェックする
    
    func deposit(){
        
    }
    //引数に指定した金額を口座に入れる
    
    func draw(){
        
    }
    //引数に指定した金額を口座から引き出す
    //残高が不足する場合は1円も引き出さない
    
    func displayInfo(){
        
    }
    //口座番号と残高を表示する
    
    class func getTotalAccount(){
        
    }
    //預金口座の総数を戻り値として返す
    class func displayTotalAmount(){
        
    }
    //全口座の預入金額の総額を表示する
    
}

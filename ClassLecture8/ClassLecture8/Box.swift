//
//  Box.swift
//  ClassLecture8
//
//  Created by minagi on 2018/12/09.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

class Box {
    
    var color: String // 箱の色
    var shape: String // 箱の形
    var num: Int // 箱の中のボールの数
    static var totalNumber = 0 // 全ての箱のボールの総数
    
    init(color: String, shape: String, num: Int) {
        self.color = color
        self.shape = shape
        self.num = num
        Box.totalNumber += num
    }
    
    /// 引数として渡された個数のボールを箱に入れる
    func insertBalls(balls: Int){
        print("\(balls)個のボールを入れました。")
        num += balls
        Box.totalNumber += balls
    }
    
    /// 引数として渡された個数のボールを箱から取り出す
    /// 個数が不足する場合はすべてのボールを取り出す
    func removeBalls(balls: Int){
        if balls <= num {
            print("\(balls)個のボールを取り出しました。")
            num -= balls
            Box.totalNumber -= balls
        } else {
            print("\(num)個のボールを取り出しました。")
            num = 0
            Box.totalNumber -= num
        }
    }
    
    /// 箱の色・形、ボールの数を表示する
    func displayInfo(boxName: Int){
        print("\(boxName)---色：\(color), 形：\(shape), 個数：\(num)")
    }
    
    /// すべての箱のボールの総数を表示する
    static func displayTotalNumber(){
        print("ボールの合計は\(totalNumber)個です。")
    }
}

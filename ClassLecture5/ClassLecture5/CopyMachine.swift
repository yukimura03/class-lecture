//
//  CopyMachine.swift
//  ClassLecture5
//
//  Created by minagi on 2018/12/09.
//  Copyright © 2018 minagi. All rights reserved.
//

import Foundation

class CopyMachine {
    var paper: Int //コピー可能な枚数
    
    init(sheet: Int){
        // 最初に給紙する枚数を指定する
        // 枚数がマイナスの場合は0枚に設定する
        if sheet < 0 {
            paper = 0
        } else {
            paper = sheet
        }
    }
    
    /// 引数として渡された枚数だけ給紙する
    func feedPaper(sheet: Int){
        if sheet >= 0 {
            print("\(sheet)枚給紙しました。")
            paper += sheet
        }
    }
    
    /// 引数として渡された枚数をコピーする
    /// すべてをコピーできない場合は可能な枚数だけコピーする
    func copy(sheet: Int) {
        if sheet > paper {
            print("\(paper)枚コピーしました")
            paper = 0
        } else {
            print("\(sheet)枚コピーしました")
            paper -= sheet
        }
    }

    /// コピー可能な枚数を表示する
    func display(){
        print("コピー可能な枚数は\(paper)枚です。")
    }
    
}

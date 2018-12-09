//
//  KeyboardUtils.swift
//  ClassLecture1
//
//  Created by Kentaro Taguchi on 2018/12/06.
//  Copyright © 2018 Kentaro Taguchi. All rights reserved.
//

import Foundation

struct KeyboardUtils {

    private init() {}

    static func inputInt() -> Int {

        let standardInput = FileHandle.standardInput
        let inputData = standardInput.availableData
        return NSString(data: inputData, encoding: String.Encoding.utf8.rawValue)!.integerValue
    }

    static func inputDouble() -> Double {

        let standardInput = FileHandle.standardInput
        let inputData = standardInput.availableData
        return NSString(data: inputData, encoding: String.Encoding.utf8.rawValue)!.doubleValue
    }

    static func inputString() -> String {

        let standardInput = FileHandle.standardInput
        let inputData = standardInput.availableData
        return NSString(data: inputData, encoding: String.Encoding.utf8.rawValue)! as String
    }
}

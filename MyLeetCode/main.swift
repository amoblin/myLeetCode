//
//  main.swift
//  MyLeetCode
//
//  Created by amoblin on 16/4/5.
//  Copyright © 2016年 marboo. All rights reserved.
//

import Foundation

print("Hello, World!")

func twoNum(inputArray: [Int], sum: NSInteger) -> [Int]
{
//    var dict:NSMutableDictionary = [:]
    let middle = Float(sum) / 2
    var groupDict = [Float:Int]()
    for (index, item) in inputArray.enumerate() {
        let offset = Float(item) - middle
        if groupDict.indexForKey(-offset) != nil {
            return [groupDict[-offset]!, index]
        }
        groupDict[offset] = index
    }
    return []
}

print(twoNum([2, 13, 7, 9, 11], sum: 9))
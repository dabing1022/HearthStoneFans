//
//  Card.swift
//  HearthStoneFans
//
//  Created by ChildhoodAndy on 16/10/6.
//  Copyright © 2016年 Sketchingame. All rights reserved.
//

import Foundation
import RealmSwift

// MARK: 卡牌
class Card : Object {
    // 卡牌唯一ID
    dynamic var ID = 0
    // 卡牌名称
    dynamic var name = ""
    
    // 卡牌类型
    private dynamic var rawType = 4
    public var type: CardType {
        get {
            return CardType(rawValue: rawType)!
        }
        
        set {
            rawType = newValue.rawValue
        }
    }
    
    // 卡牌职业
    private dynamic var rawClassType = 0
    public var class_type: HearthStoneClassType {
        get {
            return HearthStoneClassType(rawValue: rawClassType)!
        }
        
        set {
            rawClassType = newValue.rawValue
        }
    }
    
    // 卡牌杂项
    private dynamic var rawMiscellaneous = 0
    public var miscellaneous: CardMiscellaneous {
        get {
            return CardMiscellaneous(rawValue: rawMiscellaneous)!
        }
        
        set {
            rawMiscellaneous = newValue.rawValue
        }
    }
    
    
    // 卡牌资源名称
    dynamic var asset = ""
    // 金色卡牌资源名称
    dynamic var golden_asset = ""
    
    override static func primaryKey() -> String {
        return "ID"
    }
}

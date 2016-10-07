//
//  Reward.swift
//  HearthStoneFans
//
//  Created by ChildhoodAndy on 16/10/6.
//  Copyright © 2016年 Sketchingame. All rights reserved.
//

import Foundation
import RealmSwift

enum RewardType: Int {
    // 无
    case none = 0
    // 经典卡包
    case classic_card_pack
    // 金币
    case gold
    // 竞技场奖励
    case arena_credit
    // 卡背
    case card_back
}

// 奖励
class Reward : Object {
    // 奖励个数
    dynamic var nums = 0
    
    // 奖励类型
    private dynamic var rawType = 0
    public var type: RewardType {
        get {
            return RewardType(rawValue: rawType)!
        }
        set {
            rawType = newValue.rawValue
        }
    }
    dynamic var card_back: CardBack? = nil
    
    // 奖励等级
    dynamic var tier = ""
    
    // 每日几率
    dynamic var daily_chance = ""
}

//
//  HearthStoneConsts.swift
//  HearthStoneFans
//
//  Created by ChildhoodAndy on 16/10/6.
//  Copyright © 2016年 Sketchingame. All rights reserved.
//

import Foundation
import UIKit

// MARK: 卡牌类型
enum CardType: Int {
    case minion = 4
    case spell = 5
    case weapon = 7
    
    func description() -> String {
        switch self {
        case .minion:
            return "仆从"
        case .spell:
            return "法术"
        case .weapon:
            return "武器"
        }
    }
}

// MARK: 卡牌杂项
enum CardMiscellaneous: Int {
    case none
    case hero = 3
    case hero_power = 10
    
    func description() -> String {
        switch self {
        case .hero:
            return "英雄"
        case .hero_power:
            return "英雄技能"
        default:
            return ""
        }
    }
}

// MARK: 质量
enum Quality: Int {
    case free = 0
    case common = 1
    case rare = 3
    case epic = 4
    case legendary = 5
    
    func description() -> String {
        switch self {
        case .free:
            return "免费"
        case .common:
            return "普通"
        case .rare:
            return "稀有"
        case .epic:
            return "史诗"
        case .legendary:
            return "传说"
        }
    }
    
    func color() -> UIColor {
        switch self {
        case .free:
            return UIColor(colorLiteralRed: 135.0 / 255.0, green: 135.0 / 255.0, blue: 135.0 / 255.0, alpha: 1.0)
        case .common:
            return UIColor(colorLiteralRed: 255.0 / 255.0, green: 255.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
        case .rare:
            return UIColor(colorLiteralRed: 12.0 / 255.0, green: 68.0 / 255.0, blue: 122.0 / 255.0, alpha: 1.0)
        case .epic:
            return UIColor(colorLiteralRed: 78.0 / 255.0, green: 35.0 / 255.0, blue: 107.0 / 255.0, alpha: 1.0)
        case .legendary:
            return UIColor(colorLiteralRed: 146.0 / 255.0, green: 79.0 / 255.0, blue: 11.0 / 255.0, alpha: 1.0)
        }
    }
}

// MARK: 职业
enum HearthStoneClassType: Int {
    // 中立
    case neutral = 0
    // 战士
    case warrior = 1
    // 圣骑士
    case paladin = 2
    // 猎人
    case hunter = 3
    // 潜行者
    case rogue = 4
    // 牧师
    case priest = 5
    // 萨满
    case shaman = 7
    // 法师
    case mage = 8
    // 术士
    case warlock = 9
    // 德鲁伊
    case druid = 11
    
    func description() -> String {
        switch self {
        case .neutral:
            return "中立"
        case .warrior:
            return "战士"
        case .paladin:
            return "圣骑士"
        case .hunter:
            return "猎人"
        case .rogue:
            return "潜行者"
        case .priest:
            return "牧师"
        case .shaman:
            return "萨满"
        case .mage:
            return "法师"
        case .warlock:
            return "术士"
        case .druid:
            return "德鲁伊"
        }
    }
}

// MARK: 种族
enum RaceType: Int {
    // 无
    case none = 0
    // 野兽
    case beast = 20
    // 恶魔
    case demon = 15
    // 龙
    case dragon = 24
    // 机械
    case mech = 17
    // 鱼人
    case murloc = 14
    // 海盗
    case pirate = 23
    // 图腾
    case totem = 21
    
    func description() -> String {
        switch self {
        case .none:
            return "(无）"
        case .beast:
            return "野兽"
        case .demon:
            return "恶魔"
        case .dragon:
            return "龙"
        case .mech:
            return "机械"
        case .murloc:
            return "鱼人"
        case .pirate:
            return "海盗"
        case .totem:
            return "图腾"
        }
    }
}

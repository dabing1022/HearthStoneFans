//
//  Adventure.swift
//  HearthStoneFans
//
//  Created by ChildhoodAndy on 16/10/6.
//  Copyright © 2016年 Sketchingame. All rights reserved.
//

import Foundation
import RealmSwift

enum AdventureCategory: Int {
    // 练习模式
    case practice = 0
    // 纳克萨玛斯
    case naxxramas
    // 黑石山
    case blackrock_mountain
    // 探险者协会
    case league_of_explorers
    // 卡拉赞
    case karazhan
    
    func adventureName() -> String {
        switch self {
        case .practice:
            return "练习模式"
        case .naxxramas:
            return "纳克萨玛斯"
        case .blackrock_mountain:
            return "黑石山"
        case .league_of_explorers:
            return "探险者协会"
        case .karazhan:
            return "卡拉赞"
        }
    }
}

// MARK: 冒险

class Adventure: Object {
    // 冒险唯一ID
    dynamic var ID = 0
    // 冒险名称
    dynamic var name = ""
    // 冒险描述
    dynamic var desc = ""
    
    // 冒险分类
    private dynamic var rawCategory = 0
    public var category: AdventureCategory {
        get {
            return AdventureCategory(rawValue: rawCategory)!
        }
        
        set {
            rawCategory = newValue.rawValue
        }
    }
}


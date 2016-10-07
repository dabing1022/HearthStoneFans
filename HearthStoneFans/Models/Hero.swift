//
//  Heroes.swift
//  HearthStoneFans
//
//  Created by ChildhoodAndy on 16/10/6.
//  Copyright © 2016年 Sketchingame. All rights reserved.
//

import Foundation
import RealmSwift

class Hero : Object {
    dynamic var ID = 0
    // 英雄名称
    dynamic var name = ""
    // 职业
    dynamic var class_name = ""
    // 英雄技能
    dynamic var hero_power = ""
    // 英雄技能卡牌ID
    dynamic var hero_power_card_id = 0
    // 卡背ID
    dynamic var card_back_id = 0
    
    override static func primaryKey() -> String {
        return "ID"
    }
    
}

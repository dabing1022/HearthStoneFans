//
//  Quest.swift
//  HearthStoneFans
//
//  Created by ChildhoodAndy on 16/10/6.
//  Copyright © 2016年 Sketchingame. All rights reserved.
//

import Foundation
import RealmSwift

// MARK: 任务
class Quest: Object {
    // 任务唯一ID
    dynamic var ID = 0
    // 任务名称
    dynamic var name = ""
    // 任务描述
    dynamic var desc = ""
    // 任务奖励
    dynamic var reward: Reward? = nil
    
    override static func primaryKey() -> String {
        return "ID"
    }
}

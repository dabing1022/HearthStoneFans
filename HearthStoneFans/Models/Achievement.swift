//
//  Achievement.swift
//  HearthStoneFans
//
//  Created by ChildhoodAndy on 16/10/6.
//  Copyright © 2016年 Sketchingame. All rights reserved.
//

import Foundation
import RealmSwift

class Achievement : Object {
    // 成就唯一ID
    dynamic var ID = 0
    // 成就名称
    dynamic var name = ""
    // 来源
    dynamic var source = ""
    // 可获得
    dynamic var available = ""
    
    override static func primaryKey() -> String {
        return "ID"
    }
}

//
//  Season.swift
//  HearthStoneFans
//
//  Created by ChildhoodAndy on 16/10/6.
//  Copyright © 2016年 Sketchingame. All rights reserved.
//

import Foundation
import RealmSwift

// MARK: 赛季

class Season: Object {
    // 赛季唯一ID
    dynamic var ID = 0
    // 赛季注释
    dynamic var note = ""
    dynamic var comment = ""
    // 赛季开始日期
    dynamic var startdate = 0
    // 赛季结束日期
    dynamic var enddate = 0
    // 赛季名称
    dynamic var name = ""
    
    override static func primaryKey() -> String {
        return "ID"
    }
}

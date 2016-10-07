//
//  CardBack.swift
//  HearthStoneFans
//
//  Created by ChildhoodAndy on 16/10/6.
//  Copyright © 2016年 Sketchingame. All rights reserved.
//

import Foundation
import RealmSwift

class CardBack : Object {
    // 卡背唯一ID
    dynamic var ID = 0
    // 卡背名称
    dynamic var name = ""
    // 来源
    dynamic var source = ""
    // 来源ID
    dynamic var sourceid = 0
    // 注释
    dynamic var note = ""
    // 是否启用
    dynamic var enabled = 1
    //
    dynamic var comment = ""
    
    dynamic var startdate: Double = 0
    
    dynamic var enddate: Double = 0
    
    override static func primaryKey() -> String {
        return "ID"
    }
}

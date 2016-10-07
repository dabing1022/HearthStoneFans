//
//  Boss.swift
//  HearthStoneFans
//
//  Created by ChildhoodAndy on 16/10/6.
//  Copyright © 2016年 Sketchingame. All rights reserved.
//

import Foundation
import RealmSwift

class Boss : Object {
    dynamic var ID = 0
    // Boss名称
    dynamic var name = ""
    // Boss描述
    dynamic var desc = ""
    
    override static func primaryKey() -> String {
        return "ID"
    }
    
}

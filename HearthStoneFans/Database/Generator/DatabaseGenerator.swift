//
//  DatabaseGenerator.swift
//  HearthStoneFans
//
//  Created by ChildhoodAndy on 16/10/6.
//  Copyright © 2016年 Sketchingame. All rights reserved.
//

import Foundation

struct DatabaseGeneratorSourceFiles {
    static let cardback = "HearthStoneCardsBacks"
    static let seasons = "HearthStoneSeasons"
}

class DatabaseGenerator : NSObject {
    var fileName: String!
    var fileType: String!
    
    init(fileName: String, fileType: String) {
        super.init()
        
        self.fileName = fileName
        self.fileType = fileType
    }
}

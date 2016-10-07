//
//  DatabaseGeneratorManager.swift
//  HearthStoneFans
//
//  Created by ChildhoodAndy on 16/10/6.
//  Copyright © 2016年 Sketchingame. All rights reserved.
//

import Foundation
import RealmSwift

class DatabaseGeneratorManager : NSObject {
    static let sharedInstance = DatabaseGeneratorManager()
    
    override init() {
        super.init()
        
        printLog(message: NSHomeDirectory())
    }
    
    func generate() {
        do {
            try FileManager.default.removeItem(at: Realm.Configuration.defaultConfiguration.fileURL!)
        } catch {}
        
        CardBackDatabaseGenerator(fileName: DatabaseGeneratorSourceFiles.cardback, fileType: "json").generate()
    }
}

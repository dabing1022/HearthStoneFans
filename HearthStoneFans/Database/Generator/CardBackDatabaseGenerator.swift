//
//  CardBackDatabaseGenerator.swift
//  HearthStoneFans
//
//  Created by ChildhoodAndy on 16/10/6.
//  Copyright © 2016年 Sketchingame. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class CardBackDatabaseGenerator : DatabaseGenerator {
    func generate() {
        if let path = Bundle.main.path(forResource: self.fileName, ofType: self.fileType) {
            if let data = FileManager.default.contents(atPath: path) {
                let jsonDic = JSON(data: data)
                printLog(message: jsonDic)
                
                let cardsbackArr = jsonDic["cardbacks"].arrayValue
                let realm = try! Realm()
                for cardbackDic in cardsbackArr {
                    let cardback = CardBack()
                    cardback.ID = cardbackDic["id"].intValue
                    cardback.source = cardbackDic["source"].stringValue
                    cardback.sourceid = cardbackDic["sourceid"].intValue
                    cardback.note = cardbackDic["note"].stringValue
                    cardback.comment = cardbackDic["comment"].stringValue
                    cardback.enabled = cardbackDic["enabled"].intValue
                    cardback.name = cardbackDic["name"].stringValue
                    cardback.startdate = cardbackDic["startdate"].doubleValue
                    cardback.enddate = cardbackDic["enddate"].doubleValue

                    try! realm.write {
                        realm.add(cardback)
                    }
                }
            }
        }
        
    }
}

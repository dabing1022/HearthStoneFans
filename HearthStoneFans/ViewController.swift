//
//  ViewController.swift
//  HearthStoneFans
//
//  Created by ChildhoodAndy on 16/10/6.
//  Copyright © 2016年 Sketchingame. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    @IBOutlet weak var gifImageView: GIFImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DatabaseGeneratorManager.sharedInstance.generate()
        
        gifImageView.image = UIImage(named: "Card_Back_BlackTemple")
    }

}


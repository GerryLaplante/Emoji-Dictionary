//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Paul Wright on 9/25/15.
//  Copyright © 2015 Gerry Laplante. All rights reserved.
//

import Foundation
import UIKit

class EmojiDefinitionViewController : UIViewController {
    
    @IBOutlet weak var EmojiLabel: UILabel!
    @IBOutlet weak var EmojiDefinitionLabel: UILabel!
    
    var emoji = ""
    var definition = ""
    
    override func viewDidLoad() {
        self.EmojiLabel.text = emoji
        self.EmojiDefinitionLabel.text = definition
        
    }
}

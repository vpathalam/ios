//
//  EmojiDetailViewController.swift
//  EmojiDictionary
//
//  Created by Vikram Pathalam on 7/6/20.
//  Copyright © 2020 Vikram Pathalam. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController : UIViewController {
    
    @IBOutlet weak var emojiDefinition: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "😨"
    
    override func viewDidLoad() {
        self.emojiLabel.text = self.emoji
        switch(self.emoji) {
        case "🤠":
            self.emojiDefinition.text = "This is a cowboy emoji"
        case "🥰":
            self.emojiDefinition.text = "This is a love emoji"
        case "🤮":
            self.emojiDefinition.text = "This is a vomit emoji"
        case "🤑":
            self.emojiDefinition.text = "This is a money man emoji"
        case "💩":
            self.emojiDefinition.text = "This is a poop emoji"
        default:
            self.emojiDefinition.text = "This is a default emoji definition"
        }
    }
    
}

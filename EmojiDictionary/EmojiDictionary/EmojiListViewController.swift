//
//  EmojiListViewController.swift
//  EmojiDictionary
//
//  Created by Vikram Pathalam on 6/24/20.
//  Copyright © 2020 Vikram Pathalam. All rights reserved.
//

import Foundation
import UIKit

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var emojis = ["🤠", "🥰", "🤮", "🤑", "💩"]
    
    var emoji = "💩"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = UIColor.darkGray
        cell.textLabel!.text = self.emojis[indexPath.row]
        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.emoji = self.emojis[indexPath.row]
        self.performSegue(withIdentifier: "tableViewToEmojiSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! EmojiDetailViewController
        detailViewController.emoji = self.emoji
    }
    
}

//
//  EmojiListViewController.swift
//  Emoji Dictionary
//
//  Created by Gerry Laplante on 9/25/15.
//  Copyright © 2015 Gerry Laplante. All rights reserved.
//

import Foundation
import UIKit

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis = ["😎", "😂", "😙", "🐒", "💩", "😆","👏", "🐖", "🐥","⛄️", "💜", "🐧", "🐙", "👀", "☕️","👫", "🐸", "🌋"]
    var definitions = ["Smiling Face With Sunglasses", "Face with Tears of Joy", "Kissing Face", "Monkey", "Pile of Poo", "Smiling Face with Open Mouth and Tightly Closed Eyes","Hands Clapping", "Pig", "Front Facing Baby Chick","SnlowMan", "Purple Heart", "Penguin", "Octopus", "Eyes", "Coffee","Man and Women Holding Hands", "Frog", "Volcano"]
    var emoji = ""
    var definition = ""
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = self.emojis[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.emoji = self.emojis[indexPath.row]
        self.definition = self.definitions[indexPath.row]
        self.performSegueWithIdentifier("tableViewToEmojiSeque", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let definitionViewcontroller = segue.destinationViewController as! EmojiDefinitionViewController
        definitionViewcontroller.emoji = self.emoji
        definitionViewcontroller.definition = self.definition
    }
    
}
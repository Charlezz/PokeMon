//
//  ViewController.swift
//  PokeMon
//
//  Created by Charles on 2016. 4. 3..
//  Copyright © 2016년 Charles Corp. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var items = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let docsPath = NSBundle.mainBundle().resourcePath! + "/poke";
        let fileManager = NSFileManager.defaultManager()
        items = try! fileManager.contentsOfDirectoryAtPath(docsPath)
        
        
        for var item in items{
                print(item)
        }
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("POKE_CELL",forIndexPath: indexPath) as! PokeCell
        let fileName = items[indexPath.row].stringByReplacingOccurrencesOfString(".png", withString: "")
        cell.mImageView.image = UIImage(named: fileName)


        let name = fileName.substringWithRange(Range<String.Index>(start: fileName.startIndex.advancedBy(3), end: fileName.endIndex))
        
        cell.mLabel.text = name
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 150
    }

}


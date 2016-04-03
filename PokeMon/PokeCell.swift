//
//  PokeCellTableViewCell.swift
//  PokeMon
//
//  Created by Charles on 2016. 4. 3..
//  Copyright © 2016년 Charles Corp. All rights reserved.
//

import UIKit

class PokeCell: UITableViewCell {
    
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

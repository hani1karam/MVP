//
//  TableViewCell.swift
//  MVP
//
//  Created by Hany Karam on 7/1/20.
//  Copyright © 2020 Hany Karam. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell,reloadCellTitles {
    @IBOutlet weak var titleLBL: UILabel!

    func reloadTitle(title: String) {
        titleLBL.text = title

    }
    
    
    @IBOutlet weak var titleBL: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

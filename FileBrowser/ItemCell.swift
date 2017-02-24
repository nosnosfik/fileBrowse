//
//  ItemCell.swift
//  FileBrowser
//
//  Created by Nikita Taranov on 2/24/17.
//  Copyright © 2017 Nikita Taranov. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var colorTag1: UIView!
    @IBOutlet weak var colorTag2: UIView!
    @IBOutlet weak var objectType: UIImageView!
    @IBOutlet weak var objectName: UILabel!
    @IBOutlet weak var objectModDate: UILabel!

    func getStringFromDate(date:Date)->String{
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM dd,yyyy"
        return dateFormatter.string(from: date)
    }
}

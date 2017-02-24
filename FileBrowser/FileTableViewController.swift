//
//  FileTableViewController.swift
//  FileBrowser
//
//  Created by Nikita Taranov on 2/24/17.
//  Copyright © 2017 Nikita Taranov. All rights reserved.
//

import UIKit

class FileTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var wpArray:NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let lol = FileModel(filename: "up", isFolder: false, isOrange: true, isBlue: false, fileType: .pdf, modDate: NSDate() as Date)
        let lol2 = FileModel(filename: "funny_cats", isFolder: false, isOrange: false, isBlue: false, fileType: .image, modDate: NSDate() as Date)
        let lol3 = FileModel(filename: "super_pro_dj_hits", isFolder: false, isOrange: true, isBlue: true, fileType: .music, modDate: NSDate() as Date)
        let lol4 = FileModel(filename: "bee", isFolder: false, isOrange: false, isBlue: true, fileType: .movie, modDate: NSDate() as Date)
        wpArray.add(lol)
        wpArray.add(lol2)
        wpArray.add(lol3)
        wpArray.add(lol4)

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as! ItemCell
        
        cell.objectName.text = (wpArray[indexPath.row] as! FileModel).filename
        cell.objectModDate.text = ItemCell().getStringFromDate(date: (wpArray[indexPath.row] as! FileModel).modDate)
              if ((wpArray[indexPath.row] as! FileModel).isOrange) && !((wpArray[indexPath.row] as! FileModel).isBlue){
            cell.colorTag1.backgroundColor = UIColor.orange
            cell.colorTag2.backgroundColor = UIColor.orange
        }
        
        if (!(wpArray[indexPath.row] as! FileModel).isOrange) && ((wpArray[indexPath.row] as! FileModel).isBlue){
            cell.colorTag1.backgroundColor = UIColor.blue
            cell.colorTag2.backgroundColor = UIColor.blue
        }
        
        if ((wpArray[indexPath.row] as! FileModel).isOrange) && ((wpArray[indexPath.row] as! FileModel).isBlue){
            cell.colorTag1.backgroundColor = UIColor.orange
            cell.colorTag2.backgroundColor = UIColor.blue
        }
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wpArray.count
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .normal, title: "del") { action, index in
            print("more button tapped")
        }
     //   delete.backgroundColor = UIColor(patternImage: UIImage(named: "")!) //enter button image here
        
        let favorite = UITableViewRowAction(style: .normal, title: "fav") { action, index in
            print("favorite button tapped")
        }
       // favorite.backgroundColor = UIColor(patternImage: UIImage(named: "fav")!) //enter button image here
        
        let share = UITableViewRowAction(style: .normal, title: "share") { action, index in
            print("share button tapped")
        }
     //   share.backgroundColor = UIColor(patternImage: UIImage(named: "")!) //enter button image here
        
        return [favorite, share, delete]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("CLICK")
    }
    
}

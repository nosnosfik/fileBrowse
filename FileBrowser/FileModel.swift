//
//  FileModel.swift
//  FileBrowser
//
//  Created by Nikita Taranov on 2/24/17.
//  Copyright © 2017 Nikita Taranov. All rights reserved.
//

import UIKit

class FileModel: NSObject {

    private var _filename: String
    private var _isFolder: Bool // in a provided task it's a string but I think it's nonsense. It syntax declared as a bool
    private var _isOrange: Bool
    private var _isBlue: Bool
    private var _modDate:Date
    
    enum fileType {
        case image
        case pdf
        case movie
        case music

    }
    
    var filename:String{
        return _filename
    }
    
    var isFolder:Bool{
        return _isFolder
    }
    
    var isOrange:Bool{
        return _isOrange
    }
    
    var isBlue:Bool{
        return _isBlue
    }
    
    var modDate:Date {

        return _modDate
    }

    init(filename:String, isFolder: Bool, isOrange:Bool, isBlue:Bool, fileType: fileType, modDate:Date) {
        
        _filename = filename
        
        if fileType == .image {
            _filename = filename + ".img"
        }
        
        if fileType == .pdf {
            _filename = filename + ".pdf"
        }
        
        if fileType == .movie {
            _filename = filename + ".mov"
        }
        
        if fileType == .music {
            _filename = filename + ".mp3"
        }
        _modDate = modDate
        _isFolder = isFolder
        _isOrange = isOrange
        _isBlue = isBlue
        
    }

}

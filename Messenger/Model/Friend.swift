//
//  Friend.swift
//  Messenger
//
//  Created by Ahmed Samir on 3/23/19.
//  Copyright © 2019 MrRadix. All rights reserved.
//

import Foundation

class Friend: NSObject{
    private var name: String?
    private var image: String?
    
    init(name: String, image: String) {
        super.init()
        self.image = image
        self.name = name
    }
    
    func getName()-> String{
        guard let unwrapedName = name else {return "unknown name"}
        return unwrapedName
    }
    
    func getImage()-> String {
        guard let unwrapedImage = image else {return "image unavailable"}
        return unwrapedImage
    }
    
}

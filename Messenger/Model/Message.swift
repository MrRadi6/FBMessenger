//
//  Message.swift
//  Messenger
//
//  Created by Ahmed Samir on 3/23/19.
//  Copyright © 2019 MrRadix. All rights reserved.
//

import Foundation

class Message : NSObject{
    
    private var friend: Friend?
    private var text: String?
    private var date: Date?
    private var lastSeen: String?
    
    init(friend: Friend,text: String, date: Date, lastSeen: String) {
        self.friend = friend
        self.text = text
        self.date = date
        self.lastSeen = lastSeen
    }
    
    func getText()-> String {
        guard let unwrapedText = text else { return "cant recover message"}
        return unwrapedText
    }
    
    func getDate()-> String{
        guard let unwrapedDate = date else{ return "date unset"}
        let dateFormater = DateFormatter()
        dateFormater.locale = Locale(identifier: "en_US")
        return dateFormater.string(from: unwrapedDate)
    }
    
    func getLastSeenImage()-> String{
        guard let unwrapedLastSeen = lastSeen else {return "Last Seen"}
        return unwrapedLastSeen
    }
    
    func getFriendName()-> String{
        guard let unwrapedFriend = friend else{ return "Unavailable Name"}
        return unwrapedFriend.getName()
    }
    
    func getFriendImage()-> String{
        guard let unwrapedFriend = friend else{ return "Unavailable Image"}
        return unwrapedFriend.getImage()
    }
}

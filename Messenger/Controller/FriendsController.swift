//
//  ViewController.swift
//  Messenger
//
//  Created by Ahmed Samir on 3/22/19.
//  Copyright © 2019 MrRadix. All rights reserved.
//

import UIKit

class FriendsController: UICollectionViewController {

    private let cellId = "FriendCell"
    private var messages:[Message] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Recent"
        collectionView.backgroundColor = UIColor.white
        collectionView.alwaysBounceVertical = true
        collectionView.register(FriendCell.self, forCellWithReuseIdentifier: cellId)
        addNewMessage(friendName: "Mark Zuckerberg", Friendimage: "markzuckerberg", MessageText: "Hello Drew still working with your dropbox app xD xD have not get bored yet!", messageDate: Date(), messageSeen: "DrewHouston")
        
    }

    //MARK: - Collection View Delegate Methods
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(messages.count)
        return messages.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! FriendCell
        cell.message = messages[indexPath.item]
        return cell
    }
    
    //MARK: - Handle new Message
    func addNewMessage(friendName:String,Friendimage:String,MessageText:String,messageDate:Date,messageSeen:String){
        let newFriend = Friend(name: friendName, image: Friendimage)
        let newMessage = Message(friend: newFriend, text: MessageText, date: messageDate, lastSeen: messageSeen)
        messages.append(newMessage)
        print(messages.count)
    }
    

}

extension FriendsController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
}


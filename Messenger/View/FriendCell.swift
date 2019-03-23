//
//  FriendCell.swift
//  Messenger
//
//  Created by Ahmed Samir on 3/22/19.
//  Copyright © 2019 MrRadix. All rights reserved.
//

import UIKit

class FriendCell: UICollectionViewCell{
    
    //MARK: - Profile Picture
    private let profilePictureView :UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "markzuckerberg")
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    //MARK: - Divider Line
    let dividerLineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        return view
    }()
    
    //MARK: - TextContainer
    let textContainerView: UIView = {
       let container = UIView()
        container.backgroundColor = UIColor.white
        return container
    }()
    
    //MARK: - Friend label
    let friendLabel: UILabel = {
       let label = UILabel()
        label.text = "Mark Zuckerberg"
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    //MARK: - Message label
    let messageLabel: UILabel = {
        let label = UILabel()
        label.text = "Your frind massege and something of the ......"
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        label.textColor = UIColor.darkGray
        return label
    }()
    
    //MARK: - Friend label
    let timeLabel: UILabel = {
        let label = UILabel()
        label.text = "12.00 PM"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .right
        return label
    }()
    
    //MARK: - Friend Profile Picture
    private let friendPictureView :UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "markzuckerberg")
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        profilePictureViewSetup()
        dividerLineSetup()
        textContainerSetup()
        textSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
       
    }
    
    //MARK: - Profile Picture Setup
    private func profilePictureViewSetup(){
        addSubview(profilePictureView)
        profilePictureView.layer.cornerRadius = frame.size.height / 2.5
        profilePictureView.translatesAutoresizingMaskIntoConstraints = false
        profilePictureView.heightAnchor.constraint(equalToConstant: frame.size.height - 20).isActive = true
        profilePictureView.widthAnchor.constraint(equalToConstant: frame.size.height - 20).isActive = true
        profilePictureView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        profilePictureView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
    }
    
    //MARK: - Divider Line Setup
    private func dividerLineSetup(){
        addSubview(dividerLineView)
        dividerLineView.translatesAutoresizingMaskIntoConstraints = false
        dividerLineView.topAnchor.constraint(equalTo: bottomAnchor, constant: 3).isActive = true
        dividerLineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: frame.size.height - 20).isActive = true
        dividerLineView.widthAnchor.constraint(equalToConstant: frame.size.width).isActive = true
        dividerLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    //MARK: - text Container Setup
    private func textContainerSetup(){
        addSubview(textContainerView)
        textContainerView.translatesAutoresizingMaskIntoConstraints = false
        textContainerView.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
        textContainerView.bottomAnchor.constraint(equalTo: dividerLineView.topAnchor, constant: -20).isActive = true
        textContainerView.leadingAnchor.constraint(equalTo: profilePictureView.trailingAnchor, constant: 10).isActive = true
        textContainerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
    }
    private func textSetup(){
        textContainerView.addSubview(friendLabel)
        textContainerView.addSubview(messageLabel)
        textContainerView.addSubview(timeLabel)
        textContainerView.addSubview(friendPictureView)

        friendPictureView.translatesAutoresizingMaskIntoConstraints = false
        friendPictureView.layer.cornerRadius = 20 / 2.5
        
        friendPictureView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        friendPictureView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        friendPictureView.bottomAnchor.constraint(equalTo: textContainerView.bottomAnchor, constant: 5).isActive = true
        friendPictureView.trailingAnchor.constraint(equalTo: textContainerView.trailingAnchor,constant: -10).isActive = true

        LabelSetup(view: friendLabel, top: textContainerView.topAnchor, bottom: messageLabel.topAnchor, leading: textContainerView.leadingAnchor, trailing: timeLabel.leadingAnchor)
        LabelSetup(view: messageLabel, top: friendLabel.bottomAnchor, bottom: textContainerView.bottomAnchor, leading: textContainerView.leadingAnchor, trailing: friendPictureView.leadingAnchor)
        LabelSetup(view: timeLabel, top: textContainerView.topAnchor, bottom: messageLabel.topAnchor, leading: friendLabel.trailingAnchor, trailing: textContainerView.trailingAnchor)
    }
    
    private func LabelSetup(view: UIView,top: NSLayoutYAxisAnchor,bottom:NSLayoutYAxisAnchor,leading: NSLayoutXAxisAnchor,trailing:NSLayoutXAxisAnchor){
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.topAnchor.constraint(equalTo: top).isActive = true
        view.bottomAnchor.constraint(equalTo: bottom).isActive = true
        view.leadingAnchor.constraint(equalTo: leading).isActive = true
        view.trailingAnchor.constraint(equalTo: trailing).isActive = true
    }
    
    //MARK: - Cell view Setup
    private func setupViews(){
        backgroundColor = UIColor.white
    }
}

//
//  MyTableViewCell.swift
//  Swift UIKit
//
//  Created by Desenvolvimento on 2024/12/07.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    static let myIndentifier: String = "myTable"
    
    private var myLabel = UILabel()
    private var myImage = UIImageView()
    private var myStackView = UIStackView()
    //
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .green
        
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.text = "Label"
        myLabel.textColor = .magenta
        myLabel.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        //
        myImage.translatesAutoresizingMaskIntoConstraints = false
        myImage.image = UIImage(named: "myImage")
        myImage.contentMode = .scaleAspectFit
        //
        myStackView = UIStackView(arrangedSubviews: [myLabel, myImage])
        myStackView.translatesAutoresizingMaskIntoConstraints = false
        myStackView.axis = .horizontal
        myStackView.spacing = 4
        myStackView.layer.borderWidth = 1
        myStackView.layer.borderColor = UIColor.yellow.cgColor
        //
        contentView.addSubview(myStackView)
        NSLayoutConstraint.activate([
            myStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            myStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            myStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            myStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            myImage.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


/*
 class MyTableViewCell: UITableViewCell {

     static let myIndentifier: String = "myTable"
     
     private lazy var myLabel: UILabel = {
         let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.text = "Label"
         label.textColor = .magenta
         label.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
         return label
     }()
     
     private lazy var myImage: UIImageView = {
         let image = UIImageView()
         image.translatesAutoresizingMaskIntoConstraints = false
         image.image = UIImage(named: "myImage")
         image.contentMode = .scaleAspectFit
         return image
     }()
     
     private lazy var myStackView: UIStackView = {
         let stackView = UIStackView(arrangedSubviews: [myLabel, myImage])
         stackView.translatesAutoresizingMaskIntoConstraints = false
         stackView.axis = .horizontal
         stackView.spacing = 4
         stackView.layer.borderWidth = 1
         stackView.layer.borderColor = UIColor.yellow.cgColor
         return stackView
     }()
     
     //
     
     override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
         backgroundColor = .green
         contentView.addSubview(myStackView)
         NSLayoutConstraint.activate([
             myStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
             myStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
             myStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
             myStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
             myImage.heightAnchor.constraint(equalToConstant: 50)
         ])
     }
     
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
 }
 */

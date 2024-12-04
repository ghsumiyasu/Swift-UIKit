//
//  MyCollectionViewCell.swift
//  Swift UIKit
//
//  Created by Desenvolvimento on 2024/11/29.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    static let myIndentifier: String = "myCollection"

    private var myLabel = UILabel()
    private var myImage = UIImageView()
    private var myStackView = UIStackView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .green
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
        myStackView.axis = .vertical
        myStackView.spacing = 4
        myStackView.layer.borderWidth = 1
        myStackView.layer.borderColor = UIColor.yellow.cgColor
        //
        contentView.addSubview(myStackView)
        //
        NSLayoutConstraint.activate([
            myStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            myStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            myStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            myStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            myImage.heightAnchor.constraint(equalToConstant: 33)
        ])
    }
    //Codigo necessario apenas quando usado no storyboard,
    //Nao e nosso caso, mas mesmo assim o Xcode pede isso
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



/*
class MyCollectionViewCell: UICollectionViewCell {

    static let myIndentifier: String = "myCollection"

    private lazy var myStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [myLabel, myImage])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.layer.borderWidth = 1
        stackView.layer.borderColor = UIColor.yellow.cgColor
        return stackView
    }()
    
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
    //
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(myStackView)
        NSLayoutConstraint.activate([
            myStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            myStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            myStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            myStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            myImage.heightAnchor.constraint(equalToConstant: 33)
        ])
        
        
        
    }
    //Codigo necessario apenas quando usado no storyboard,
    //Nao e nosso caso, mas mesmo assim o Xcode pede isso
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
*/

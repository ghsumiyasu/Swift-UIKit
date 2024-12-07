//
//  MyTableViewCell.swift
//  Swift UIKit
//
//  Created by Desenvolvimento on 2024/12/07.
//

import UIKit

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

//
//  MyCollectionViewCell.swift
//  Swift UIKit
//
//  Created by Desenvolvimento on 2024/11/29.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    static let myIndentifier: String = "myCollection"
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .green
    }
    //Codigo necessario apenas quando usado no storyboard,
    //Nao e nosso caso, mas mesmo assim o Xcode pede isso
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

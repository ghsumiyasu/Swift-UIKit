//
//  HourlyForecastCollectionViewCell.swift
//  Swift UIKit
//
//  Created by Desenvolvimento on 2024/11/06.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .green
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

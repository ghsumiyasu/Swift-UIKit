//
//  ViewController.swift
//  Swift UIKit
//
//  Created by Desenvolvimento on 2024/10/29.
//

import UIKit

class ViewController: UIViewController {
    //
    private var myCollectionView = UICollectionView()
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        view.backgroundColor = .red
        //
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 67, height: 84)
        layout.sectionInset = UIEdgeInsets(top: .zero, left: 12, bottom: 0, right: 12)
        let myCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        aula 05 16:10
        
    }


}

